-- rde_emotes | client/gestures.lua
-- Gesten-Erweiterung: Fingerzeigen (B) + Crouch/Stand (STRG) + Ragdoll (G)
-- Portiert & refactored nach RDE OX Standards v2 aus legacy rde_core
-- v1.0.1 | Red Dragon Elite | SerpentsByte

local function Log(msg, level)
    if not Config.Debug and level ~= 'ERROR' then return end
    local prefix = level == 'ERROR' and '^1' or level == 'WARN' and '^3' or '^2'
    print(('%s[RDE EMOTES GESTURES]^7 %s'):format(prefix, msg))
end

-- ─── State ──────────────────────────────────────────────────────────────────
local GestureState = {
    pointing   = false,  -- Fingerzeig-Task aktiv
    crouchMode = 0,      -- 0 = Stand | 1 = Crouch
    ragdoll    = false,  -- Ragdoll aktiv (G)
}

-- ─── Clipsets & Anim ────────────────────────────────────────────────────────
local CLIPSET_CROUCH = 'move_ped_crouched'
local POINT_DICT     = 'anim@mp_point'

-- ─── AnimSet Loader (on-demand, mit Timeout-Guard) ───────────────────────────
local function LoadAnimSet(name)
    if HasAnimSetLoaded(name) then return true end
    RequestAnimSet(name)
    local deadline = GetGameTimer() + 5000
    while not HasAnimSetLoaded(name) do
        if GetGameTimer() > deadline then
            Log('AnimSet timeout: ' .. name, 'WARN')
            return false
        end
        Wait(10)
    end
    return true
end

-- ─── AnimDict Loader (on-demand, mit Timeout-Guard) ──────────────────────────
local function LoadAnimDict(dict)
    if HasAnimDictLoaded(dict) then return true end
    RequestAnimDict(dict)
    local deadline = GetGameTimer() + 8000
    while not HasAnimDictLoaded(dict) do
        if GetGameTimer() > deadline then
            Log('AnimDict timeout: ' .. dict, 'WARN')
            return false
        end
        Wait(10)
    end
    return true
end

-- ═══════════════════════════════════════════════════════════════════════════
-- 🫵 FINGERZEIGEN (Taste B)
--    Native mp_pointing Task — exakt wie GTA:O Fingerzeig
-- ═══════════════════════════════════════════════════════════════════════════

local function PointStart()
    if GestureState.pointing then return end
    local ped = cache.ped
    if IsPedInAnyVehicle(ped) or IsEntityDead(ped) then return end

    -- Laufendes Emote stoppen damit es nicht mit dem pointing task kollidiert
    if Anim_IsPlaying and Anim_IsPlaying() then Anim_Stop() end

    if not LoadAnimDict(POINT_DICT) then return end

    SetPedCurrentWeaponVisible(ped, false, true, true, true)
    SetPedConfigFlag(ped, 36, true)

    -- GTA-interne ScriptRT Task-Aufruf (0x2D537BA194896636 = TaskMpPointing)
    Citizen.InvokeNative(0x2D537BA194896636, ped, 'task_mp_pointing', 0.5, 0, POINT_DICT, 24)
    RemoveAnimDict(POINT_DICT)

    GestureState.pointing = true
    Log('Fingerzeig: START')
end

local function PointStop()
    if not GestureState.pointing then return end
    local ped = cache.ped

    -- Task stoppen via ScriptRT Stop-Signal
    Citizen.InvokeNative(0xD01015C7316AE176, ped, 'Stop')
    if not IsPedInjured(ped) then
        ClearPedSecondaryTask(ped)
    end
    if not IsPedInAnyVehicle(ped, true) then
        SetPedCurrentWeaponVisible(ped, true, true, true, true)
    end
    SetPedConfigFlag(ped, 36, false)
    ClearPedSecondaryTask(ped)

    GestureState.pointing = false
    Log('Fingerzeig: STOP')
end

-- ─── Fingerzeig Richtungs-Update Loop ────────────────────────────────────────
-- Wait(0) BEWUSST: Kamera-Tracking muss jeden Frame aktualisiert werden.
-- Spart CPU wenn nicht aktiv: fällt auf Wait(250) zurück.
CreateThread(function()
    while true do
        if GestureState.pointing then
            local ped = cache.ped

            -- Externer Stop-Check (Emote, ClearPedTasks, Tod, Fahrzeug)
            -- 0x921CE12C489C4C41 = prüft ob der mp_pointing Task noch läuft
            if not Citizen.InvokeNative(0x921CE12C489C4C41, ped) then
                GestureState.pointing = false
                Wait(250)
            elseif not IsPedOnFoot(ped) then
                PointStop()
                Wait(250)
            else
                -- Kamera-Pitch (vertikale Zeigrichtung) — clamp + normalisieren
                local camPitch = GetGameplayCamRelativePitch()
                camPitch = math.max(-70.0, math.min(42.0, camPitch))
                camPitch = (camPitch + 70.0) / 112.0

                -- Kamera-Heading (horizontale Zeigrichtung) — clamp + normalisieren
                local camHeading = GetGameplayCamRelativeHeading()
                local cosCH = Cos(camHeading)
                local sinCH = Sin(camHeading)
                camHeading = math.max(-180.0, math.min(180.0, camHeading))
                camHeading  = (camHeading + 180.0) / 360.0

                -- Wand-Kollisions-Raycast: Finger stoppt vor Wänden
                local blocked = 0
                local coords = GetOffsetFromEntityInWorldCoords(
                    ped,
                    (cosCH * -0.2) - (sinCH * (0.4 * camHeading + 0.3)),
                    (sinCH * -0.2) + (cosCH * (0.4 * camHeading + 0.3)),
                    0.6
                )
                local ray = Cast_3dRayPointToPoint(
                    coords.x, coords.y, coords.z - 0.2,
                    coords.x, coords.y, coords.z + 0.2,
                    0.4, 95, ped, 7
                )
                local nn
                nn, blocked, coords, coords = GetRaycastResult(ray)

                -- Richtungsparameter an den GTA mp_pointing Task übergeben
                Citizen.InvokeNative(0xD5BB4025AE449A4E, ped, 'Pitch',     camPitch)
                Citizen.InvokeNative(0xD5BB4025AE449A4E, ped, 'Heading',   camHeading * -1.0 + 1.0)
                Citizen.InvokeNative(0xB0A6CFD2C69C1088, ped, 'isBlocked', blocked)
                Citizen.InvokeNative(0xB0A6CFD2C69C1088, ped, 'isFirstPerson',
                    Citizen.InvokeNative(0xEE778F8C7E1142E2,
                        Citizen.InvokeNative(0x19CAFA3C87F7C2FF)) == 4)

                Wait(0) -- Frame-genaues Tracking solange aktiv
            end
        else
            Wait(250) -- Idle: CPU schonen wenn kein Fingerzeig aktiv
        end
    end
end)

-- ─── Fingerzeig Keybind ──────────────────────────────────────────────────────
-- KEIN + Prefix — + ist für Hold-Actions (wie +attack), nicht für Toggle
-- Spieler kann B in ESC > Settings > Keybinds > FiveM ändern
RegisterCommand('rde_fingerpoint', function()
    Log('Fingerzeig Command gefeuert — pointing=' .. tostring(GestureState.pointing))
    if GestureState.pointing then
        PointStop()
    else
        PointStart()
    end
end, false)
RegisterKeyMapping('rde_fingerpoint', Config.GetString('point_label'), 'keyboard', Config.PointKey)

-- /fp — Debug-Command falls B-Taste nicht reagiert (Test ob Logic funktioniert)
RegisterCommand('fp', function()
    Log('Fingerzeig /fp Debug Command')
    if GestureState.pointing then
        PointStop()
    else
        PointStart()
    end
end, false)

-- ═══════════════════════════════════════════════════════════════════════════
-- 🦆 CROUCH / STAND (STRG)
--    2-State Toggle: Stand ↔ Crouch
--    Control 36 = INPUT_DUCK — wir übernehmen es selbst, deaktivieren GTA-native
-- ═══════════════════════════════════════════════════════════════════════════

local function SetStand()
    local ped = cache.ped
    ResetPedMovementClipset(ped, 0.8)  -- smooth blend back to stand
    GestureState.crouchMode = 0
    LocalPlayer.state:set('rde_emt_gesture', nil, true)
    Log('Stance → Stand')
    lib.notify({
        description = Config.GetString('stance_stand'),
        type = 'info', icon = 'person-standing', duration = 1500
    })
end

local function SetCrouch()
    GestureState.crouchMode = 1
    local ped = cache.ped
    ClearPedTasks(ped)
    -- StateBag sofort setzen damit andere Spieler es sehen
    LocalPlayer.state:set('rde_emt_gesture', json.encode({ type = 'crouch' }), true)
    CreateThread(function()
        if not LoadAnimSet(CLIPSET_CROUCH) then
            GestureState.crouchMode = 0
            LocalPlayer.state:set('rde_emt_gesture', nil, true)
            return
        end
        SetPedMovementClipset(ped, CLIPSET_CROUCH, 0.25)
        Log('Stance → Crouch')
        lib.notify({
            description = Config.GetString('stance_crouch'),
            type = 'info', icon = 'arrow-down-to-dot', duration = 1500
        })
    end)
end



-- ─── StateBag Handler: andere Spieler sehen Crouch ────────────────────────────
AddStateBagChangeHandler('rde_emt_gesture', nil, function(bagName, _, value)
    local ped = GetPlayerPed(GetPlayerFromStateBagName(bagName))
    if not ped or ped == cache.ped then return end
    if not DoesEntityExist(ped) then return end

    if not value then
        -- Zurück zu Stand
        ResetPedMovementClipset(ped, 0.0)
        ClearPedTasks(ped)
        return
    end

    local ok, data = pcall(json.decode, value)
    if not ok or not data then return end

    if data.type ~= 'crouch' then return end
    CreateThread(function()
        if not HasAnimSetLoaded(CLIPSET_CROUCH) then
            RequestAnimSet(CLIPSET_CROUCH)
            local t = GetGameTimer() + 5000
            while not HasAnimSetLoaded(CLIPSET_CROUCH) do
                if GetGameTimer() > t then return end
                Wait(10)
            end
        end
        SetPedMovementClipset(ped, CLIPSET_CROUCH, 0.25)
    end)
end)

-- ─── CTRL Control-Intercept Loop ─────────────────────────────────────────────
-- Zweck: DisableControlAction(0, 36) muss jedes Frame aufgerufen werden,
-- solange der Spieler zu Fuß ist, damit GTA das native Duck-Verhalten NICHT
-- selbst ausführt. Wir übernehmen den Toggle in unserem 3-State System.
-- Wait(1) im On-Foot-Pfad ≈ every-frame auf FiveM — notwendige Ausnahme.
-- Im Vehicle/Dead-Pfad: Wait(500) zum CPU sparen.
CreateThread(function()
    while true do
        local ped = cache.ped
        if DoesEntityExist(ped) and not IsEntityDead(ped) and not IsPedInAnyVehicle(ped) then
            DisableControlAction(0, 36, true)
            if not IsPauseMenuActive() then
                if IsDisabledControlJustPressed(0, 36) then
                    if GestureState.crouchMode == 0 then
                        SetCrouch()
                    else
                        SetStand()
                    end
                end
            end
            Wait(1) -- Frame-genau: CTRL muss jedes Frame abgefangen werden
        else
            -- Nicht zu Fuß oder tot → Stance zurücksetzen falls nötig
            if GestureState.crouchMode ~= 0 then
                ResetPedMovementClipset(ped, 0.3)  -- quick but not a snap
                GestureState.crouchMode = 0
            end
            Wait(500) -- Idle: keine aktive Control-Interception nötig
        end
    end
end)

-- ═══════════════════════════════════════════════════════════════════════════
-- 💀 RAGDOLL (Taste G)
--    Press G → Charakter fällt um / ragdollt
--    Press G nochmal ODER Ragdoll endet natürlich → aufstehen
-- ═══════════════════════════════════════════════════════════════════════════

local function RagdollStart()
    local ped = cache.ped
    if IsPedInAnyVehicle(ped) or IsEntityDead(ped) then return end
    -- Crouch zuerst clearen damit Ragdoll sauber startet
    if GestureState.crouchMode ~= 0 then
        ClearPedTasks(ped)
        ResetPedMovementClipset(ped, 0.0)
        GestureState.crouchMode = 0
    end
    SetPedToRagdoll(ped, 10000, 10000, 0, false, false, false)
    GestureState.ragdoll = true
    Log('Ragdoll: START')
end

local function RagdollStop()
    if not GestureState.ragdoll then return end
    local ped = cache.ped
    ClearPedTasks(ped)
    GestureState.ragdoll = false
    Log('Ragdoll: STOP')
end

-- Ragdoll Keybind
RegisterCommand('rde_ragdoll', function()
    if GestureState.ragdoll then
        RagdollStop()
    else
        RagdollStart()
    end
end, false)
RegisterKeyMapping('rde_ragdoll', Config.GetString('ragdoll_label'), 'keyboard', Config.RagdollKey)

-- Auto-Reset wenn Ragdoll natürlich endet (Ped settled)
CreateThread(function()
    while true do
        if GestureState.ragdoll then
            if not IsPedRagdoll(cache.ped) then
                -- Ragdoll ist selbst geendet (settled/timer abgelaufen)
                GestureState.ragdoll = false
                Log('Ragdoll: natürlich geendet')
            end
            Wait(250)
        else
            Wait(500)
        end
    end
end)

-- ═══════════════════════════════════════════════════════════════════════════
-- 🧹 CLEANUP
-- ═══════════════════════════════════════════════════════════════════════════

local function FullCleanup()
    PointStop()
    local ped = cache.ped
    if ped and DoesEntityExist(ped) then
        ResetPedMovementClipset(ped, 0.0)
    end
    GestureState.crouchMode = 0
end

-- ox_core native death event
AddEventHandler('ox:playerDeath', function()
    FullCleanup()
end)

-- Fallback für andere Death-Frameworks
AddEventHandler('baseevents:onPlayerDied', function()
    FullCleanup()
end)

-- Resource Stop: sauber aufräumen
AddEventHandler('onResourceStop', function(name)
    if name ~= GetCurrentResourceName() then return end
    FullCleanup()
end)

Log('Gestures geladen — Fingerzeig: ' .. Config.PointKey .. ' | Crouch/Stand: STRG | Ragdoll: ' .. Config.RagdollKey)
