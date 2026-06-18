-- rde_emotes | client/preview.lua
-- Live Character Preview Camera — smooth orbit around ped during menu

local function Log(msg, level)
    if not Config.Debug and level ~= 'ERROR' then return end
    local prefix = level == 'ERROR' and '^1' or level == 'WARN' and '^3' or '^2'
    print(('%s[RDE EMOTES PREV]^7 %s'):format(prefix, msg))
end

local PreviewState = {
    active  = false,
    cam     = nil,
    angle   = 0.0,
    previewEmote = nil,
}

local CAM_DISTANCE   = Config.PreviewCam.distance
local CAM_FOV        = Config.PreviewCam.fov
local CAM_HEIGHT     = Config.PreviewCam.heightOffset
local ROTATE_SPEED   = Config.PreviewCam.rotateSpeed

-- ─── Helpers ─────────────────────────────────

local function GetCamOffset(angle, dist, height)
    local rad = math.rad(angle)
    return {
        x = math.sin(rad) * dist,
        y = math.cos(rad) * dist,
        z = height,
    }
end

local function LoadPreviewAnimDict(dict)
    if HasAnimDictLoaded(dict) then return true end
    RequestAnimDict(dict)
    local t = GetGameTimer() + 5000
    while not HasAnimDictLoaded(dict) do
        if GetGameTimer() > t then return false end
        Wait(10)
    end
    return true
end

-- ─── Preview Emote ────────────────────────────

function Preview_PlayEmote(emote)
    if not emote then
        Preview_StopEmote()
        return
    end
    local ped = cache.ped
    if not LoadPreviewAnimDict(emote.dict) then return end

    PreviewState.previewEmote = emote

    TaskPlayAnim(ped, emote.dict, emote.clip,
        4.0, -4.0, -1,
        emote.loop and 49 or 0,
        0.0, false, false, false)
end

function Preview_StopEmote()
    if PreviewState.previewEmote then
        ClearPedTasks(cache.ped)
        PreviewState.previewEmote = nil
    end
end

-- ─── Camera ───────────────────────────────────

function Preview_Start()
    if PreviewState.active then return end
    PreviewState.active = true
    PreviewState.angle  = 0.0

    FreezeEntityPosition(cache.ped, true)

    local cam = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)
    PreviewState.cam = cam

    SetCamFov(cam, CAM_FOV)
    SetCamActive(cam, true)
    RenderScriptCams(true, true, 500, true, false)

    -- Smooth Orbit Loop
    CreateThread(function()
        while PreviewState.active do
            local ped    = cache.ped
            local pedPos = GetEntityCoords(ped)
            local offset = GetCamOffset(PreviewState.angle, CAM_DISTANCE, CAM_HEIGHT)

            local camX = pedPos.x + offset.x
            local camY = pedPos.y + offset.y
            local camZ = pedPos.z + 0.7 + offset.z

            SetCamCoord(cam, camX, camY, camZ)
            PointCamAtCoord(cam, pedPos.x, pedPos.y, pedPos.z + 0.65)

            PreviewState.angle = PreviewState.angle + ROTATE_SPEED
            if PreviewState.angle >= 360.0 then PreviewState.angle = 0.0 end

            Wait(0)
        end
    end)

    Log('Preview camera started')
end

function Preview_Stop()
    if not PreviewState.active then return end
    PreviewState.active = false

    Preview_StopEmote()
    FreezeEntityPosition(cache.ped, false)
    RenderScriptCams(false, true, 500, true, false)
    DestroyCam(PreviewState.cam, true)
    PreviewState.cam = nil

    Log('Preview camera stopped')
end

function Preview_IsActive()
    return PreviewState.active
end

function Preview_SetAngle(angle)
    PreviewState.angle = angle
end
