-- rde_emotes | client/client.lua
-- Main Logic: NUI Bridge, Commands, Keybind, Favorites

local function Log(msg, level)
    if not Config.Debug and level ~= 'ERROR' then return end
    local prefix = level == 'ERROR' and '^1' or level == 'WARN' and '^3' or '^2'
    print(('%s[RDE EMOTES CLIENT]^7 %s'):format(prefix, msg))
end

-- ─── State ───────────────────────────────────
local State = {
    menuOpen  = false,
    favorites = {},   -- { [emoteId] = true }
}

-- ─── Helpers ─────────────────────────────────

local function IsMenuOpen()
    return State.menuOpen
end

local function SendNUI(action, data)
    SendNUIMessage({ action = action, data = data or {} })
end

-- ─── Favorites ────────────────────────────────

local function LoadFavorites()
    lib.callback('rde_emotes:getFavorites', false, function(favs)
        State.favorites = {}
        if favs then
            for _, id in ipairs(favs) do
                State.favorites[id] = true
            end
        end
        SendNUI('setFavorites', State.favorites)
        Log('Favorites loaded: ' .. #favs .. ' entries')
    end)
end

local function ToggleFavorite(emoteId)
    local emote = EmotesFlat[emoteId]
    if not emote then return end

    if State.favorites[emoteId] then
        -- Remove
        State.favorites[emoteId] = nil
        TriggerServerEvent('rde_emotes:removeFavorite', emoteId)
        lib.notify({
            description = Config.GetString('fav_removed', emote.label),
            type = 'info', icon = 'heart-off', duration = 3000
        })
    else
        -- Count check
        local count = 0
        for _ in pairs(State.favorites) do count = count + 1 end
        if count >= Config.MaxFavorites then
            lib.notify({
                description = Config.GetString('fav_limit', Config.MaxFavorites),
                type = 'error', icon = 'heart-crack', duration = 3000
            })
            return
        end
        -- Add
        State.favorites[emoteId] = true
        TriggerServerEvent('rde_emotes:addFavorite', emoteId)
        lib.notify({
            description = Config.GetString('fav_added', emote.label),
            type = 'success', icon = 'heart', duration = 3000
        })
    end

    SendNUI('setFavorites', State.favorites)
end

-- ─── Menu ────────────────────────────────────

local function BuildEmotePayload()
    local payload = {
        categories = Config.Categories,
        emotes     = {},
        colors     = Config.HexColors,
        locales    = Config.Locales[Config.DefaultLanguage],
    }
    -- Emotes flach als Array für die NUI
    for _, emote in ipairs(EmotesAll) do
        payload.emotes[#payload.emotes + 1] = {
            id       = emote.id,
            label    = emote.label,
            category = emote.category,
            loop     = emote.loop,
            tags     = emote.tags,
            hasProp  = emote.prop ~= nil,
        }
    end
    return payload
end

local function OpenMenu()
    if State.menuOpen then return end
    Log('OpenMenu called')

    State.menuOpen = true
    SetNuiFocus(true, true)

    -- Payload schicken
    SendNUI('open', BuildEmotePayload())
    SendNUI('setFavorites', State.favorites)
    SendNUI('setActive', Anim_GetActive() and Anim_GetActive().id or nil)

    -- Preview Camera starten
    Preview_Start()

    Log('Menu opened')
end

local function CloseMenu()
    if not State.menuOpen then return end
    State.menuOpen = false
    SetNuiFocus(false, false)

    -- Preview stoppen (spielt weiter wenn Emote aktiv)
    Preview_Stop()

    -- Wenn kein Emote aktiv → Ped unfreezen wird von Preview_Stop gemacht
    -- Wenn Emote aktiv → ClearPedTasks wird durch Anim_Stop gemacht wenn nötig

    SendNUI('close', {})
    Log('Menu closed')
end

-- ─── NUI Callbacks ────────────────────────────

RegisterNUICallback('close', function(_, cb)
    CloseMenu()
    cb('ok')
end)

RegisterNUICallback('playEmote', function(data, cb)
    local emote = EmotesFlat[data.id]
    if not emote then cb('error'); return end

    CloseMenu()
    Wait(100) -- kurz warten bis NUI weg

    local ok = Anim_Play(emote)
    if ok then
        lib.notify({
            description = Config.GetString('emote_started', emote.label),
            type = 'success', icon = 'play-circle', duration = 3000
        })
    end
    cb('ok')
end)

RegisterNUICallback('stopEmote', function(_, cb)
    if Anim_IsPlaying() then
        Anim_Stop()
        lib.notify({
            description = Config.GetString('emote_stopped'),
            type = 'info', icon = 'stop-circle', duration = 2000
        })
    end
    cb('ok')
end)

RegisterNUICallback('toggleFavorite', function(data, cb)
    ToggleFavorite(data.id)
    cb('ok')
end)

RegisterNUICallback('previewEmote', function(data, cb)
    if data.id then
        local emote = EmotesFlat[data.id]
        if emote then Preview_PlayEmote(emote) end
    else
        Preview_StopEmote()
    end
    cb('ok')
end)

RegisterNUICallback('rotateCam', function(data, cb)
    -- User dreht die Camera manuell im Menü
    if data.angle then
        Preview_SetAngle(data.angle)
    end
    cb('ok')
end)

-- ─── Commands ─────────────────────────────────

-- /e <emoteid>  — direkter Aufruf ohne Menü
RegisterCommand('e', function(_, args)
    if not args[1] then
        -- Kein Arg = Menü öffnen
        OpenMenu()
        return
    end
    local id = args[1]:lower()
    local emote = EmotesFlat[id]
    if not emote then
        lib.notify({
            description = Config.GetString('no_results', id),
            type = 'error', icon = 'x-circle', duration = 3000
        })
        return
    end
    Anim_Play(emote)
    lib.notify({
        description = Config.GetString('emote_started', emote.label),
        type = 'success', icon = 'play-circle', duration = 2000
    })
end, false)

AddEventHandler('chat:addSuggestion', function()
    -- Warte bis Chat-Resource ready
end)
TriggerEvent('chat:addSuggestion', '/e', 'Emote spielen oder Menü öffnen', {
    { name='emote', help='Emote-ID (optional — leer lassen für Menü)' }
})

-- /stopemote — Emote abbrechen
RegisterCommand('stopemote', function()
    if Anim_IsPlaying() then
        Anim_Stop()
        lib.notify({
            description = Config.GetString('emote_stopped'),
            type = 'info', icon = 'stop-circle', duration = 2000
        })
    end
end, false)
TriggerEvent('chat:addSuggestion', '/stopemote', 'Aktuelles Emote stoppen')

-- Keybind — native FiveM (zuverlässiger als lib.addKeybind)
RegisterCommand('+rde_emotes_toggle', function()
    Log('Keybind pressed — menuOpen=' .. tostring(State.menuOpen))
    if State.menuOpen then
        CloseMenu()
    else
        OpenMenu()
    end
end, false)

RegisterKeyMapping('+rde_emotes_toggle', 'Emote Menü öffnen/schließen', 'keyboard', Config.MenuKey)

-- Stop-Keybind — Emote sofort abbrechen, ohne ins Menü zu müssen
RegisterCommand('+rde_emotes_stop', function()
    if Anim_IsPlaying() then
        Anim_Stop()
        lib.notify({
            description = Config.GetString('emote_stopped'),
            type = 'info', icon = 'stop-circle', duration = 2000
        })
    end
end, false)

RegisterKeyMapping('+rde_emotes_stop', 'Aktuelles Emote stoppen', 'keyboard', Config.StopKey)

-- ESC close wenn Menü offen
CreateThread(function()
    while true do
        Wait(100)
        if State.menuOpen then
            if IsControlJustPressed(0, 200) then -- ESC
                CloseMenu()
            end
        end
    end
end)

-- ─── Init ─────────────────────────────────────

AddEventHandler('ox_core:playerLoaded', function()
    LoadFavorites()
    Log('Player loaded — favorites fetched')
end)

-- Falls Resource neu gestartet wurde während Spieler schon eingeloggt war:
-- ox:playerLoaded feuert nicht erneut, also fragen wir den Server direkt.
CreateThread(function()
    Wait(1000)
    LoadFavorites()
end)
