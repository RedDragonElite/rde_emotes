# 🎭 RDE Emotes — Full GTA5 Emote System

[![Version](https://img.shields.io/badge/version-1.0.0-red?style=for-the-badge)](https://github.com/RedDragonElite/rde_emotes)
[![License](https://img.shields.io/badge/license-RDE%20Black%20Flag-black?style=for-the-badge)](https://github.com/RedDragonElite/rde_emotes/blob/main/LICENSE)
[![Framework](https://img.shields.io/badge/Framework-ox__core-blue?style=for-the-badge)](https://github.com/overextended/ox_core)
[![ox_lib](https://img.shields.io/badge/UI-ox__lib-purple?style=for-the-badge)](https://github.com/overextended/ox_lib)
[![FiveM](https://img.shields.io/badge/FiveM-Compatible-blue?style=for-the-badge)](https://fivem.net)
[![Free](https://img.shields.io/badge/Price-FREE%20FOREVER-green?style=for-the-badge)](https://github.com/RedDragonElite)
[![Status](https://img.shields.io/badge/status-STABLE-brightgreen?style=for-the-badge)](https://github.com/RedDragonElite/rde_emotes)

> **487 validated native GTA5 emotes, on-demand loading, live preview camera, and a drop-in custom pack system.** Built by [Red Dragon Elite](https://rd-elite.com) — Free Forever. No Paywalls. No Gatekeepers.

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a7ed39a9-dfa0-49ea-8968-a884843455ee" />

---

## 🔥 What is rde_emotes?

**rde_emotes** is a complete, production-ready emote system for FiveM servers running **ox_core**. 487 native GTA5 animations across 10 categories, a cinematic live-preview camera so you see the emote on your own character before you play it, full multiplayer sync via StateBags, and a custom pack system that lets you drop in your own animations — `.lua` for the data, `.ycd` for the stream — without touching a single line of core code.

### Why this changes everything

| ❌ Generic Emote Scripts                  | ✅ rde_emotes                                                  |
| ------------------------------------------ | --------------------------------------------------------------- |
| All anim dicts loaded permanently (~3.5 MiB+) | ✅ On-demand loading — 0 MB idle baseline                       |
| No live preview while browsing             | ✅ Cinematic orbit camera — see it before you play it           |
| Custom anims require editing core files    | ✅ Drop-in custom pack system — zero core edits, ever           |
| Manual categorization for every emote      | ✅ Auto-categorized by keyword detection                        |
| ESX-era / legacy framework dependency      | ✅ Pure ox_core — zero legacy code                               |
| Static, hardcoded animation list           | ✅ 487 validated native anims + unlimited custom packs           |
| Single anim type (TaskPlayAnim only)       | ✅ Dual playback — TaskPlayAnim **and** TaskStartScenarioInPlace |

---

## 📋 Changelog

### v1.0.0 — Initial Release

- 487 native GTA5 emotes extracted, validated, and categorized across 10 categories
- Dual animation engine: `TaskPlayAnim` for animations, `TaskStartScenarioInPlace` for world scenarios
- On-demand AnimDict loading with configurable auto-unload timer
- Live orbit-camera preview system with hover-to-preview
- StateBag-based multiplayer sync — other players see your emotes in real time
- Favorites system, persisted per-character via `charId`
- Custom pack system — `data/custom/*.lua` auto-loaded via fxmanifest wildcard
- Auto-categorization engine for custom emotes with no manual setup
- Full-text search across labels, IDs, and tags
- Dedicated stop keybind — cancel any emote without opening the menu

---

## ✨ Features

### 🎬 Core Animation Engine

- 487 validated native GTA5 animations across **10 categories** (dance, sit, idle, gesture, reaction, celebrate, social, music, work, misc)
- **Dual playback system** — `TaskPlayAnim` for standard animations, `TaskStartScenarioInPlace` for `WORLD_HUMAN_*` / `PROP_HUMAN_*` scenarios
- **On-demand AnimDict loading** — dictionaries load only when triggered, zero permanent memory footprint
- Configurable auto-unload after idle timeout (default: 60s)
- **Cancel-on-move** safety — moving more than 0.5m auto-stops looping emotes
- Native GTA prop attachment — bone, offset, and rotation support

### 📷 Live Preview Camera

- Cinematic orbit camera around your own character while the menu is open
- Hover any emote card to preview it instantly — no commitment, no spam-clicking
- Works seamlessly with `illenium-appearance` skins and custom characters

### 🌐 Multiplayer Sync

- StateBag-based emote broadcast (`rde_emt_emote`) — other players see you in real time
- Zero polling — fully event-driven via `AddStateBagChangeHandler`
- Automatic cleanup on emote stop, logout, or disconnect

### ❤️ Favorites System

- Up to **30 favorites** per character (configurable)
- Persisted server-side in `rde_emotes_favorites`, keyed by `charId`
- Instant access from a dedicated sidebar tab

### 🧩 Custom Pack System

- Drop a `.lua` file into `data/custom/` — auto-loaded via fxmanifest wildcard, **no config changes needed**
- Drop `.ycd` stream files into `stream/[Your Pack Name]/` — FiveM streams them automatically
- **Auto-categorization** by keyword detection — no manual category assignment required
- Full validation with clear F8 console warnings for malformed entries
- ID-conflict detection — last-loaded pack wins, with a console warning

### 🔍 Search & UI

- Full-text search across label, ID, and custom tags
- 10 categories with live emote counts
- Flat RDE dark theme — no gradients, no bloat, just clean UI

### 🔒 Security & Performance

- Rate-limited favorite add/remove requests (500ms cooldown per player)
- Prepared SQL statements with `UNIQUE KEY` dedup on the favorites table
- Strict input validation on all custom emote IDs (`^[%w_]+$` only)
- Zero `Wait()` calls inside NetEvent handlers

---

## 📦 Dependencies

```
# server.cfg — CRITICAL: start in this exact order!
ensure oxmysql
ensure ox_lib
ensure ox_core
ensure rde_emotes
```

| Dependency                                         | Required   | Notes                                  |
| --------------------------------------------------- | ---------- | --------------------------------------- |
| [oxmysql](https://github.com/communityox/oxmysql)    | ✅ Required | Database layer for favorites           |
| [ox_core](https://github.com/communityox/ox_core)    | ✅ Required | Player/character framework             |
| [ox_lib](https://github.com/communityox/ox_lib)      | ✅ Required | Callbacks, notifications, keybind helpers |

> **Note:** rde_emotes requires FiveM server build `≥ 7290` (declared in `fxmanifest.lua`) — StateBag broadcasting requires OneSync and modern server builds.

---

## 🚀 Installation

```
# 1. Clone into your resources folder
cd resources
git clone https://github.com/RedDragonElite/rde_emotes.git
```

```
# 2. Add to server.cfg
ensure oxmysql
ensure ox_lib
ensure ox_core
ensure rde_emotes
```
> **Order matters.** `rde_emotes` must start **after** all its dependencies.

### Database

No manual SQL import strictly needed — the favorites table is auto-created on first start. If you prefer to run it manually:

```sql
-- sql/rde_emotes.sql
CREATE TABLE IF NOT EXISTS `rde_emotes_favorites` (
    `id`         INT          NOT NULL AUTO_INCREMENT,
    `char_id`    VARCHAR(64)  NOT NULL,
    `emote_id`   VARCHAR(128) NOT NULL,
    `created_at` TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uq_char_emote` (`char_id`, `emote_id`),
    INDEX `idx_char_id` (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
```

### Configure (Optional)

Edit `config.lua`:

```lua
Config.MenuKey      = 'F4'    -- Open/close the emote menu
Config.StopKey       = 'X'     -- Instantly stop the current emote
Config.MaxFavorites  = 30      -- Max favorites per character
Config.DictUnloadDelay = 60000 -- Auto-unload idle dicts (ms), 0 = never
Config.CancelOnMove  = true    -- Auto-stop looping emotes on movement
Config.Debug         = false   -- Dev debug logging
```

```
# 5. Restart & Test
refresh
restart rde_emotes
```

---

## ⚙️ Configuration

All configuration lives in `config.lua`. Key settings:

### Keybinds

```lua
Config.MenuKey = 'F4'   -- Toggle emote menu
Config.StopKey = 'X'    -- Stop current emote, no menu required
```

### Preview Camera

```lua
Config.PreviewCam = {
    fov          = 45.0,
    distance     = 2.2,
    heightOffset = 0.15,
    rotateSpeed  = 0.8,   -- Auto-rotation speed in the preview
}
```

### Favorites & Memory

```lua
Config.MaxFavorites    = 30      -- Per-character cap
Config.DictUnloadDelay = 60000   -- ms before idle AnimDicts unload (0 = never)
Config.CancelOnMove    = true    -- Cancel loops on player movement
```

---

## 📡 How It Works — On-Demand Animation Architecture

```
┌──────────────────────────────────────────────────────────────────┐
│  1. PLAYER PRESSES F4         Menu opens, preview camera starts  │
│  2. HOVER EMOTE CARD          Preview_PlayEmote() on local ped   │
│  3. CLICK TO PLAY             RequestAnimDict() if not loaded    │
│  4. TaskPlayAnim / Scenario   Animation starts locally           │
│  5. STATEBAG SET              rde_emt_emote broadcast (true)     │
│  6. OTHER CLIENTS             AddStateBagChangeHandler fires      │
│                                 → load dict → TaskPlayAnim         │
│  7. IDLE TIMEOUT (60s)        RemoveAnimDict() — memory freed    │
└──────────────────────────────────────────────────────────────────┘
```

**Why this matters:** Generic emote scripts load every single animation dictionary at resource start and keep them in memory for the entire session — that's the multi-MiB baseline you see sitting permanently in `resmon`. rde_emotes loads a dict **only at the moment it's triggered**, and unloads it again after a configurable idle period. Your server's idle memory footprint for emotes is effectively zero.

---

## 🧩 Custom Pack System — Deep Dive

Drop a `.lua` file into `data/custom/` and call `AddCustomEmotes()`:

```lua
-- data/custom/my_pack.lua
AddCustomEmotes({
    {
        id       = 'my_dance',
        label    = 'My Custom Dance',
        type     = 'anim',              -- 'anim' or 'scenario'
        dict     = 'my_dict@',
        clip     = 'my_clip_name',
        loop     = true,
        category = 'dance',             -- optional — auto-detected if omitted
        tags     = { 'dance', 'custom' },
    },
})
```

Drop your matching `.ycd` stream files into `stream/[Your Pack Name]/` — FiveM streams them automatically, no `fxmanifest.lua` edits required.

**On load**, every entry is validated (`id`, `label`, and either `dict`+`clip` or `scenario` required), auto-categorized via keyword detection if no `category` is given, and registered into the same lookup tables as the native emotes — fully indistinguishable in the UI except for an internal `custom = true` flag for future filtering.

Full format reference, prop examples, and category keyword tables live in [`data/custom/README.md`](data/custom/README.md).

---

## 🎮 Usage

### For Players

**Opening the menu:**
1. Press `F4` (configurable)
2. Browse by category or search by name
3. Hover any emote to preview it on your own character
4. Click to play

**Stopping an emote:**
- Press `X` (configurable) — works instantly, no menu required
- Or click "Emote stoppen" inside the menu
- Or run `/stopemote`

**Favorites:**
- Click the heart icon on any emote card
- Access your favorites from the dedicated sidebar tab

### Commands

| Command           | Description                                  |
| ------------------ | --------------------------------------------- |
| `/e`               | Opens the emote menu                          |
| `/e <id>`          | Plays a specific emote directly, no menu      |
| `/stopemote`       | Stops the currently playing emote             |

### Keybinds

| Key  | Action                          |
| ---- | -------------------------------- |
| `F4` | Toggle emote menu                |
| `X`  | Stop current emote               |
| `ESC`| Close menu (while open)          |

---

## 🔧 Developer API

### Public Functions (client-side)

```lua
Anim_Play(emote)       -- Plays an emote table directly
Anim_Stop()             -- Stops the currently active emote
Anim_IsPlaying()        -- Returns true/false
Anim_GetActive()        -- Returns the active emote table, or nil
```

### Registering Custom Emotes

```lua
AddCustomEmotes({
    {
        id = 'wave_custom', label = 'Custom Wave', type = 'anim',
        dict = 'my_dict@', clip = 'wave_clip', loop = false,
    },
})
```

See [`data/custom/README.md`](data/custom/README.md) for the full schema including scenario emotes and prop attachment.

---

## 📊 Performance

```
Resource: rde_emotes
├─ Idle:     0.00 ms (no AnimDicts loaded)
├─ Active:   0.01–0.03 ms (per emote, dict loaded)
├─ Memory:   0 MB baseline → ~50–300 KB per loaded dict (auto-unloaded)
├─ Threads:  Dynamic — cleaned up after idle timeout
└─ Network:  Single StateBag write per emote start/stop, zero polling
```

---

## 📁 File Structure

```
rde_emotes/
├── fxmanifest.lua          ← Resource manifest, wildcard custom pack loading
├── config.lua              ← Keybinds, categories, locales, all settings
├── data/
│   ├── emotes.lua          ← 487 validated native emotes + AddCustomEmotes API
│   └── custom/              ← Drop your custom .lua packs here (empty by default)
│       └── README.md       ← Full custom pack format reference
├── client/
│   ├── animations.lua      ← On-demand dict loading, TaskPlayAnim/Scenario, StateBag sync
│   ├── preview.lua         ← Live orbit camera system
│   └── client.lua          ← NUI bridge, commands, keybinds, favorites
├── server/
│   └── server.lua          ← Favorites persistence, validation, rate limiting
├── html/                   ← NUI (index.html, css, js)
├── stream/                  ← Drop your custom .ycd files here (empty by default)
├── sql/rde_emotes.sql      ← Database schema
├── LICENSE                 ← RDE Black Flag Source License v6.66
└── README.md               ← You are here
```

---

## 🐛 Troubleshooting

**Menu doesn't open?**
Check F8 console for `[RDE EMOTES]` errors. Make sure `ox_core`, `ox_lib`, and `oxmysql` are started **before** `rde_emotes` in `server.cfg`.

**Keybind not working?**
`F4` or `X` might already be remapped by another resource or your own FiveM settings. Check **FiveM Settings → Key Bindings → FiveM** and search for "Emote".

**Custom pack not loading?**
- Confirm the file sits directly in `data/custom/` and ends in `.lua`
- Check F8 for `[RDE EMOTES] Custom pack loaded: X added, Y skipped`
- Validate that your `dict`/`clip` names exactly match your `.ycd` file contents

**Favorites not saving?**
Verify `rde_emotes_favorites` exists (auto-created on first start) and that the character is fully loaded (`ox:playerLoaded` has fired).

**Animation looks wrong / T-pose?**
The `dict`/`clip` pair is invalid for that resource's GTA5 build, or the AnimDict failed to load in time. Enable `Config.Debug = true` and check F8 for `AnimDict timeout` warnings.

---

## 🗺️ Roadmap

### Planned for v2.0

- [ ] Shared/synced emotes — 2-player interactions (hugs, handshakes, dances)
- [ ] Radial emote wheel for quick access without the full menu
- [ ] Per-emote sound effects
- [ ] Animation playback speed control
- [ ] Mood/facial expression layering while emoting
- [ ] In-menu prop color picker

Have a feature request? [Open a Discussion](https://github.com/RedDragonElite/rde_emotes/discussions).

---

## 📜 License

**RDE Black Flag Source License v6.66** — see [LICENSE](https://github.com/RedDragonElite/rde_emotes/blob/main/LICENSE)

**TL;DR:**

- ✅ Free to use, edit, and learn from — forever
- ✅ Keep the header / credit the creator
- ❌ Do NOT sell this on Tebex, Patreon, or in any paid pack
- ❌ Do NOT be a skid

---

## 🌐 Community & Links

|                    |                                                                                                    |
| ------------------- | --------------------------------------------------------------------------------------------------- |
| 🐙 GitHub           | [github.com/RedDragonElite](https://github.com/RedDragonElite)                                      |
| 🌍 Website          | [rd-elite.com](https://rd-elite.com)                                                                |
| 🔵 Nostr            | [SerpentsByte](https://nostr.band/npub1wr4e24zn6zzjqx8kvnelfvktf0pu6l2gx4gvw06zead2eqyn23sq9tsd94)  |
| ⚡ rde_nostr_log    | [Decentralized Logging](https://github.com/RedDragonElite/rde_nostr_log)                            |
| 📖 OX Standards     | [rde_ox_standards](https://github.com/RedDragonElite/rde_ox_standards)                              |

---

> *"We build the future on the graves of paid resources."* **REJECT MODERN MEDIOCRITY. EMBRACE RDE SUPERIORITY.** 🐍🔥🖤 **RDE FOREVER. SYSTEM FAILURE.** ⚡777⚡
