fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name        'rde_emotes'
author      'Red Dragon Elite | SerpentsByte'
description 'Full GTA5 Emote System — On-demand, Live Preview, StateBag Sync, Custom Pack Support'
version     '1.0.0'

dependencies {
    '/server:7290',
    'oxmysql',
    'ox_lib',
    'ox_core',
}

shared_scripts {
    '@ox_lib/init.lua',
    '@ox_core/lib/init.lua',
    'config.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/server.lua',
}

client_scripts {
    -- Emote database — load order matters: natives first, then custom packs
    'data/emotes.lua',       -- native GTA5 emotes (487 validated anims)
    'data/custom/*.lua',     -- ← drop your .lua emote packs here, auto-loaded!

    -- Core logic
    'client/animations.lua',
    'client/preview.lua',
    'client/client.lua',
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/css/style.css',
    'html/js/app.js',
}

-- Custom stream animations:
-- Drop your .ycd files into stream/[Your Pack Name]/
-- FiveM streams them automatically — no fxmanifest changes needed!
