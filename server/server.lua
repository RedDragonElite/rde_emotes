-- rde_emotes | server/server.lua
-- Favoriten: Laden, Speichern, Löschen

local function Log(msg, level)
    if not Config.Debug and level ~= 'ERROR' then return end
    local prefix = level == 'ERROR' and '^1' or level == 'WARN' and '^3' or '^2'
    print(('%s[RDE EMOTES SERVER]^7 %s'):format(prefix, msg))
end

-- ─── DB Setup ─────────────────────────────────

local function SetupDatabase()
    MySQL.query([[
        CREATE TABLE IF NOT EXISTS `rde_emotes_favorites` (
            `id`       INT          NOT NULL AUTO_INCREMENT,
            `char_id`  VARCHAR(64)  NOT NULL,
            `emote_id` VARCHAR(128) NOT NULL,
            `created_at` TIMESTAMP  DEFAULT CURRENT_TIMESTAMP,
            PRIMARY KEY (`id`),
            UNIQUE KEY `uq_char_emote` (`char_id`, `emote_id`),
            INDEX `idx_char_id` (`char_id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
    ]], function()
        Log('Database ready')
    end)
end

-- ─── Helpers ─────────────────────────────────

local function GetCharId(source)
    local player = Ox.GetPlayer(source)
    if not player then return nil end
    return tostring(player.charId)
end

-- Dedup Cache gegen doppelte Requests
local RequestCache = {}
local function CanRequest(source)
    local now = GetGameTimer()
    if RequestCache[source] and (now - RequestCache[source]) < 500 then return false end
    RequestCache[source] = now
    return true
end

-- ─── Callbacks ────────────────────────────────

lib.callback.register('rde_emotes:getFavorites', function(source)
    local charId = GetCharId(source)
    if not charId then return {} end

    local rows = MySQL.query.await(
        'SELECT emote_id FROM rde_emotes_favorites WHERE char_id = ? LIMIT ?',
        { charId, Config.MaxFavorites }
    )

    local result = {}
    if rows then
        for _, row in ipairs(rows) do
            result[#result + 1] = row.emote_id
        end
    end
    Log(('Favorites for %s: %d entries'):format(charId, #result))
    return result
end)

-- ─── Net Events ───────────────────────────────

RegisterNetEvent('rde_emotes:addFavorite', function(emoteId)
    local source = source
    if not CanRequest(source) then return end

    local charId = GetCharId(source)
    if not charId then return end

    -- Validierung: emote ID darf nur alphanumeric + underscore sein
    if not emoteId:match('^[%w_]+$') then
        Log('Invalid emote ID from ' .. source .. ': ' .. emoteId, 'WARN')
        return
    end

    -- Max-Limit Check
    local count = MySQL.scalar.await(
        'SELECT COUNT(*) FROM rde_emotes_favorites WHERE char_id = ?',
        { charId }
    )
    if (count or 0) >= Config.MaxFavorites then
        Log('Favorites limit hit for ' .. charId, 'WARN')
        return
    end

    MySQL.query(
        'INSERT IGNORE INTO rde_emotes_favorites (char_id, emote_id) VALUES (?, ?)',
        { charId, emoteId },
        function(result)
            if result and result.affectedRows > 0 then
                Log(('Added favorite: %s → %s'):format(charId, emoteId))
            end
        end
    )
end)

RegisterNetEvent('rde_emotes:removeFavorite', function(emoteId)
    local source = source
    if not CanRequest(source) then return end

    local charId = GetCharId(source)
    if not charId then return end

    if not emoteId:match('^[%w_]+$') then return end

    MySQL.query(
        'DELETE FROM rde_emotes_favorites WHERE char_id = ? AND emote_id = ?',
        { charId, emoteId },
        function(result)
            if result and result.affectedRows > 0 then
                Log(('Removed favorite: %s → %s'):format(charId, emoteId))
            end
        end
    )
end)

-- ─── Startup ──────────────────────────────────

AddEventHandler('onResourceStart', function(name)
    if name ~= GetCurrentResourceName() then return end
    local attempts = 0
    while not Ox and attempts < 100 do
        Wait(100)
        attempts = attempts + 1
    end
    if not Ox then
        Log('ox_core not found!', 'ERROR')
        return
    end
    SetupDatabase()
    Log('Resource started — rde_emotes v' .. GetResourceMetadata(name, 'version', 0))
end)

-- Cleanup on stop
AddEventHandler('onResourceStop', function(name)
    if name ~= GetCurrentResourceName() then return end
    RequestCache = {}
end)

-- Cleanup Thread: alten Cache alle 10 min leeren
CreateThread(function()
    while true do
        Wait(600000)
        local now = GetGameTimer()
        for k, ts in pairs(RequestCache) do
            if ts < now - 60000 then RequestCache[k] = nil end
        end
    end
end)
