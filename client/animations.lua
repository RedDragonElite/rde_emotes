-- rde_emotes | client/animations.lua
-- Animation Controller — TaskPlayAnim + TaskStartScenarioInPlace
-- On-demand Dict Loading, Prop System, StateBag Sync

local function Log(msg, level)
    if not Config.Debug and level ~= 'ERROR' then return end
    local prefix = level == 'ERROR' and '^1' or level == 'WARN' and '^3' or '^2'
    print(('%s[RDE EMOTES ANIM]^7 %s'):format(prefix, msg))
end

-- ─── State ────────────────────────────────────
local AnimState = {
    active      = nil,    -- aktuell laufendes Emote
    prop        = nil,    -- aktuelles Prop Entity
    dictLoaded  = {},     -- { dict = timestamp }
}

-- ─── Dict Management ──────────────────────────

local function LoadAnimDict(dict)
    if HasAnimDictLoaded(dict) then
        AnimState.dictLoaded[dict] = GetGameTimer()
        return true
    end
    RequestAnimDict(dict)
    local timeout = GetGameTimer() + 8000
    while not HasAnimDictLoaded(dict) do
        if GetGameTimer() > timeout then
            Log('AnimDict timeout: ' .. dict, 'WARN')
            return false
        end
        Wait(10)
    end
    AnimState.dictLoaded[dict] = GetGameTimer()
    Log('Loaded dict: ' .. dict)
    return true
end

local function ScheduleUnloadDict(dict)
    if Config.DictUnloadDelay <= 0 then return end
    SetTimeout(Config.DictUnloadDelay, function()
        if AnimState.active and AnimState.active.dict == dict then return end
        if HasAnimDictLoaded(dict) then
            RemoveAnimDict(dict)
            AnimState.dictLoaded[dict] = nil
            Log('Unloaded dict: ' .. dict)
        end
    end)
end

-- ─── Prop System ──────────────────────────────

local function AttachProp(propData)
    if not propData or not propData.model then return end
    local hash = joaat(propData.model)
    RequestModel(hash)
    local timeout = GetGameTimer() + 8000
    while not HasModelLoaded(hash) do
        if GetGameTimer() > timeout then
            Log('Prop timeout: ' .. propData.model, 'WARN')
            return
        end
        Wait(10)
    end
    local ped  = cache.ped
    local prop = CreateObject(hash, 0, 0, 0, true, true, true)
    local bone = propData.bone or 28422

    AttachEntityToEntity(prop, ped, bone,
        propData.offset.x, propData.offset.y, propData.offset.z,
        propData.rotation.x, propData.rotation.y, propData.rotation.z,
        true, true, false, true, 1, true)

    SetModelAsNoLongerNeeded(hash)
    AnimState.prop = prop
    Log('Prop attached: ' .. propData.model)
end

local function DetachProp()
    if AnimState.prop and DoesEntityExist(AnimState.prop) then
        DeleteObject(AnimState.prop)
        AnimState.prop = nil
    end
end

-- ─── Core: Play ───────────────────────────────

function Anim_Play(emote)
    if not emote then return false end
    Anim_Stop()

    local ped = cache.ped

    if emote.type == 'scenario' then
        -- SCENARIO EMOTE
        TaskStartScenarioInPlace(ped, emote.scenario, 0, true)
        AnimState.active = emote
        -- StateBag sync
        LocalPlayer.state:set('rde_emt_emote', json.encode({
            type = 'scenario', scenario = emote.scenario
        }), true)
        Log('Scenario: ' .. emote.scenario)
        return true
    end

    -- ANIM EMOTE
    if not LoadAnimDict(emote.dict) then
        lib.notify({ description = Config.GetString('loading'), type = 'info', duration = 2000 })
        return false
    end

    -- flag 49 = LOOP + NON_INTERRUPTABLE | flag 0 = play once
    local flag = emote.loop and 49 or 0

    TaskPlayAnim(ped, emote.dict, emote.clip,
        8.0,   -- blendIn
        -8.0,  -- blendOut
        -1,    -- duration: -1 = wir kontrollieren
        flag,
        0.0,   -- playbackRate
        false, false, false)

    AnimState.active = emote

    -- Prop
    if emote.prop then
        CreateThread(function()
            Wait(100)
            AttachProp(emote.prop)
        end)
    end

    -- StateBag sync für andere Spieler
    LocalPlayer.state:set('rde_emt_emote', json.encode({
        type = 'anim', dict = emote.dict, clip = emote.clip, flag = flag, loop = emote.loop
    }), true)

    -- Single-shot Auto-Stop
    if not emote.loop then
        CreateThread(function()
            Wait(150)
            while AnimState.active and AnimState.active.id == emote.id do
                if not IsEntityPlayingAnim(ped, emote.dict, emote.clip, 3) then
                    Anim_Stop()
                    break
                end
                Wait(250)
            end
        end)
    end

    ScheduleUnloadDict(emote.dict)
    Log('Playing: ' .. emote.id)
    return true
end

function Anim_Stop()
    if not AnimState.active then return end
    local ped = cache.ped

    if AnimState.active.type == 'scenario' then
        ClearPedTasks(ped)
    else
        ClearPedTasks(ped)
    end

    DetachProp()
    LocalPlayer.state:set('rde_emt_emote', nil, true)
    Log('Stopped: ' .. AnimState.active.id)
    AnimState.active = nil
end

function Anim_GetActive()
    return AnimState.active
end

function Anim_IsPlaying()
    return AnimState.active ~= nil
end

-- ─── Cancel on Move ───────────────────────────

if Config.CancelOnMove then
    local lastPos = nil
    CreateThread(function()
        while true do
            Wait(500)
            if AnimState.active then
                local pos = GetEntityCoords(cache.ped)
                if lastPos then
                    if #(pos - lastPos) > 0.5 then
                        Anim_Stop()
                    end
                end
                lastPos = pos
            else
                lastPos = nil
            end
        end
    end)
end

-- ─── Andere Spieler: StateBag Handler ─────────

AddStateBagChangeHandler('rde_emt_emote', nil, function(bagName, _, value)
    local ped = GetPlayerPed(GetPlayerFromStateBagName(bagName))
    if not ped or ped == cache.ped then return end
    if not DoesEntityExist(ped) then return end

    if not value then
        ClearPedTasksImmediately(ped)
        return
    end

    local ok, data = pcall(json.decode, value)
    if not ok or not data then return end

    CreateThread(function()
        if data.type == 'scenario' then
            TaskStartScenarioInPlace(ped, data.scenario, 0, true)
        else
            if not HasAnimDictLoaded(data.dict) then
                RequestAnimDict(data.dict)
                local t = GetGameTimer() + 5000
                while not HasAnimDictLoaded(data.dict) do
                    if GetGameTimer() > t then return end
                    Wait(10)
                end
            end
            TaskPlayAnim(ped, data.dict, data.clip,
                8.0, -8.0, -1, data.flag, 0.0, false, false, false)
        end
    end)
end)
