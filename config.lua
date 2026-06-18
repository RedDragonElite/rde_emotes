Config = {}

Config.Debug             = true
Config.DefaultLanguage   = 'de'
Config.DatabaseTable     = 'rde_emotes_favorites'
Config.StatebagPrefix    = 'rde_emt_'
Config.MaxFavorites      = 30

-- Preview Camera Settings
Config.PreviewCam = {
    fov        = 45.0,
    distance   = 2.2,
    heightOffset = 0.15,
    rotateSpeed  = 0.8,   -- Auto-rotation speed im Preview
}

-- Keybind zum Öffnen des Menüs
Config.MenuKey = 'F4'
Config.StopKey = 'X'

-- Emote Abbruch bei Bewegung
Config.CancelOnMove = true

-- Auto-Unload Anim Dict nach X ms Idle (0 = nie)
Config.DictUnloadDelay = 60000

Config.HexColors = {
    primary = '#c0392b',   -- RDE Red
    secondary = '#8b0000',
    accent  = '#ff6b35',
    success = '#22c55e',
    error   = '#ef4444',
    warning = '#f59e0b',
    info    = '#3b82f6',
    admin   = '#fbbf24',
    bg      = '#0d0d0d',
    surface = '#1a1a1a',
    border  = '#2a2a2a',
}

Config.Categories = {
    { id = 'dance',     label = 'Tanzen',        icon = '💃', color = '#ff6b9d' },
    { id = 'sit',       label = 'Sitzen',         icon = '🪑', color = '#fbbf24' },
    { id = 'gesture',   label = 'Gesten',         icon = '🤸', color = '#3b82f6' },
    { id = 'idle',      label = 'Idles',          icon = '😴', color = '#8b5cf6' },
    { id = 'music',     label = 'Musik',          icon = '🎵', color = '#22c55e' },
    { id = 'reaction',  label = 'Reaktionen',     icon = '🤣', color = '#f59e0b' },
    { id = 'celebrate', label = 'Feiern',         icon = '🏆', color = '#ef4444' },
    { id = 'social',    label = 'Social',         icon = '🤝', color = '#06b6d4' },
    { id = 'pose',      label = 'Posen',          icon = '🥊', color = '#ec4899' },
    { id = 'work',      label = 'Arbeit',          icon = '🔧', color = '#94a3b8' },
    { id = 'misc',      label = 'Sonstiges',       icon = '🎭', color = '#a78bfa' },
}

Config.Locales = {
    en = {
        menu_open        = 'Emote Menu',
        search_hint      = 'Search emotes...',
        favorites        = 'Favorites',
        no_favorites     = 'No favorites yet — click ♡ to add',
        emote_started    = 'Emote started: **%s**',
        emote_stopped    = 'Emote stopped',
        fav_added        = 'Added to favorites: **%s**',
        fav_removed      = 'Removed from favorites: **%s**',
        fav_limit        = 'Favorites limit reached (%d)',
        loading          = 'Loading animation...',
        no_results       = 'No results for "%s"',
        no_permission    = 'No permission',
    },
    de = {
        menu_open        = 'Emote Menü',
        search_hint      = 'Emotes durchsuchen...',
        favorites        = 'Favoriten',
        no_favorites     = 'Noch keine Favoriten — ♡ klicken zum Hinzufügen',
        emote_started    = 'Emote gestartet: **%s**',
        emote_stopped    = 'Emote gestoppt',
        fav_added        = 'Zu Favoriten hinzugefügt: **%s**',
        fav_removed      = 'Aus Favoriten entfernt: **%s**',
        fav_limit        = 'Favoriten-Limit erreicht (%d)',
        loading          = 'Animation wird geladen...',
        no_results       = 'Keine Ergebnisse für "%s"',
        no_permission    = 'Keine Berechtigung',
    },
}

function Config.GetString(key, ...)
    local lang = Config.Locales[Config.DefaultLanguage] or Config.Locales['en']
    local str  = lang[key] or key
    if ... then return string.format(str, ...) end
    return str
end

