# 🎭 RDE Emotes — Full GTA5 Emote System

[![Version](https://img.shields.io/badge/version-1.0.1-red?style=for-the-badge)](https://github.com/RedDragonElite/rde_emotes)
[![License](https://img.shields.io/badge/license-RDE%20Black%20Flag-black?style=for-the-badge)](https://github.com/RedDragonElite/rde_emotes/blob/main/LICENSE)
[![Framework](https://img.shields.io/badge/Framework-ox__core-blue?style=for-the-badge)](https://github.com/overextended/ox_core)
[![ox_lib](https://img.shields.io/badge/UI-ox__lib-purple?style=for-the-badge)](https://github.com/overextended/ox_lib)
[![FiveM](https://img.shields.io/badge/FiveM-Compatible-blue?style=for-the-badge)](https://fivem.net)
[![Free](https://img.shields.io/badge/Price-FREE%20FOREVER-green?style=for-the-badge)](https://github.com/RedDragonElite)
[![Status](https://img.shields.io/badge/status-STABLE-brightgreen?style=for-the-badge)](https://github.com/RedDragonElite/rde_emotes)

> **487 validated native GTA5 emotes, on-demand loading, live preview camera, and a drop-in custom pack system.** Built by [Red Dragon Elite](https://rd-elite.com) — Free Forever. No Paywalls. No Gatekeepers.

---

## 🔥 What is rde_emotes?

**rde_emotes** is a complete, production-ready emote system for FiveM servers running **ox_core**. 487 native GTA5 animations across 10 categories, a cinematic live-preview camera so you see the emote on your own character before you play it, full multiplayer sync via StateBags, and a custom pack system that lets you drop in your own animations — `.lua` for the data, `.ycd` for the stream — without touching a single line of core code.

As of **v1.0.1**, three essential RP gestures are built directly into the resource — no extra script required:

- 🫵 **Finger Point** (`B`) — GTA:O native mp_pointing task with full directional tracking and wall-collision awareness
- 🦆 **Crouch / Stand** (`CTRL`) — movement clipset toggle with StateBag sync so everyone sees your stance
- 💀 **Ragdoll** (`G`) — fall down / get up toggle with auto-reset when the ped settles

### Why this changes everything

| ❌ Generic Emote Scripts                  | ✅ rde_emotes                                                  |
| ------------------------------------------ | --------------------------------------------------------------- |
| All anim dicts loaded permanently (~3.5 MiB+) | ✅ On-demand loading — 0 MB idle baseline                       |
| No live preview while browsing             | ✅ Cinematic orbit camera — see it before you play it           |
| Custom anims require editing core files    | ✅ Drop-in custom pack system — zero core edits, ever           |
| Manual categorization for every emote      | ✅ Auto-categorized by keyword detection                        |
| ESX-era / legacy framework dependency      | ✅ Pure ox_core — zero legacy code                               |
| Static, hardcoded animation list           | ✅ 487 validated native anims + unlimited custom packs           |
| Gestures are a separate resource           | ✅ Finger point, crouch, ragdoll built in — StateBag synced     |

---

## 📋 Changelog

### v1.0.1 — Gesture System

- 🆕 **Finger Point** (`B`) — native GTA:O `task_mp_pointing` with camera pitch/heading tracking and wall-collision raycast. All other players see the direction you point in real time (native GTA network sync)
- 🆕 **Crouch / Stand toggle** (`CTRL`) — `move_ped_crouched` clipset, StateBag synced via `rde_emt_gesture` so all nearby players see your stance
- 🆕 **Ragdoll toggle** (`G`) — `SetPedToRagdoll` with auto-reset when ped settles. GTA native network sync handles other-player visibility
- 🔧 All gestures live in `client/gestures.lua` — isolated from the emote engine, zero coupling
- 🔧 Two new config keys: `Config.PointKey` (`b`) and `Config.RagdollKey` (`g`) — fully rebindable via FiveM Settings → Key Bindings → FiveM
- 🔧 `/fp` debug command for testing finger point logic independently of keybind state

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

### 🫵 Gesture System (v1.0.1)

Three essential RP gestures, StateBag synced, no extra resource:

**Finger Point (`B`)**
- GTA:O native `task_mp_pointing` — the same pointing system used in GTA Online
- Full camera pitch and heading tracking — the finger follows exactly where you look
- Wall-collision raycast — the finger stops naturally before walls and objects
- Per-frame direction updates while active, drops to `Wait(250)` idle when not pointing
- Native GTA network task — all players see the pointing direction automatically

**Crouch / Stand (`CTRL`)**
- `move_ped_crouched` movement clipset — player can walk while crouched
- Intercepts `INPUT_DUCK` (control 36) directly — GTA's native duck behavior is replaced
- StateBag sync via `rde_emt_gesture` — all nearby players see your crouch in real time
- Auto-stand when entering a vehicle or dying

**Ragdoll (`G`)**
- `SetPedToRagdoll` — character falls and physics-simulates until settled
- Auto-reset when the ped settles (`IsPedRagdoll` poll at `Wait(250)`)
- Press `G` again to force-stand before the timer expires
- GTA native ragdoll physics are network-synced — no extra StateBag needed

### 📷 Live Preview Camera

- Cinematic orbit camera around your own character while the menu is open
- Hover any emote card to preview it instantly — no commitment, no spam-clicking
- Works seamlessly with `illenium-appearance` skins and custom characters

### 🌐 Multiplayer Sync

- StateBag-based emote broadcast (`rde_emt_emote`) — other players see your emotes in real time
- StateBag-based gesture broadcast (`rde_emt_gesture`) — other players see your crouch stance
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

> **Note:** rde_emotes requires FiveM server build `≥ 7290`. StateBag broadcasting requires OneSync and modern server builds.

---

## 🚀 Installation

```bash
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

No manual SQL import needed — the favorites table is auto-created on first start. If you prefer to run it manually:

```sql
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
Config.MenuKey         = 'F4'    -- Open/close the emote menu
Config.StopKey         = 'X'     -- Instantly stop the current emote
Config.PointKey        = 'b'     -- Finger point toggle (rebindable in FiveM settings)
Config.RagdollKey      = 'g'     -- Ragdoll toggle (rebindable in FiveM settings)
Config.MaxFavorites    = 30      -- Max favorites per character
Config.DictUnloadDelay = 60000   -- Auto-unload idle dicts (ms), 0 = never
Config.CancelOnMove    = true    -- Auto-stop looping emotes on movement
Config.Debug           = false   -- Dev debug logging
```

---

## ⚙️ Configuration

### Keybinds

| Key    | Action                          | Rebindable |
| ------ | -------------------------------- | ---------- |
| `F4`   | Toggle emote menu                | ✅ FiveM Settings |
| `X`    | Stop current emote               | ✅ FiveM Settings |
| `B`    | Finger point toggle              | ✅ FiveM Settings |
| `G`    | Ragdoll toggle                   | ✅ FiveM Settings |
| `CTRL` | Crouch / Stand toggle            | ❌ Fixed (intercepts INPUT_DUCK) |

All `RegisterKeyMapping` binds can be rebound per-player in **FiveM Settings → Key Bindings → FiveM**.

### Preview Camera

```lua
Config.PreviewCam = {
    fov          = 45.0,
    distance     = 2.2,
    heightOffset = 0.15,
    rotateSpeed  = 0.8,
}
```

---

## 📡 How It Works — On-Demand Animation Architecture

```
┌──────────────────────────────────────────────────────────────────┐
│  EMOTE SYSTEM                                                    │
│  1. PLAYER PRESSES F4         Menu opens, preview camera starts  │
│  2. HOVER EMOTE CARD          Preview_PlayEmote() on local ped   │
│  3. CLICK TO PLAY             RequestAnimDict() if not loaded    │
│  4. TaskPlayAnim / Scenario   Animation starts locally           │
│  5. STATEBAG SET              rde_emt_emote broadcast (true)     │
│  6. OTHER CLIENTS             AddStateBagChangeHandler fires      │
│  7. IDLE TIMEOUT (60s)        RemoveAnimDict() — memory freed    │
├──────────────────────────────────────────────────────────────────┤
│  GESTURE SYSTEM (v1.0.1)                                         │
│  CTRL pressed  → SetPedMovementClipset(move_ped_crouched)        │
│                → StateBag rde_emt_gesture = {type='crouch'}      │
│                → Other clients load clipset and apply            │
│  B pressed     → task_mp_pointing via GTA native network task    │
│  G pressed     → SetPedToRagdoll — GTA native network sync       │
└──────────────────────────────────────────────────────────────────┘
```

---

## 🧩 Custom Pack System — Deep Dive

```lua
-- data/custom/my_pack.lua
AddCustomEmotes({
    {
        id       = 'my_dance',
        label    = 'My Custom Dance',
        type     = 'anim',
        dict     = 'my_dict@',
        clip     = 'my_clip_name',
        loop     = true,
        category = 'dance',
        tags     = { 'dance', 'custom' },
    },
})
```

Drop your `.ycd` stream files into `stream/[Your Pack Name]/` — FiveM streams them automatically.

---

## 🎮 Usage

### For Players

| Action | How |
| ------ | --- |
| Open emote menu | `F4` |
| Preview emote | Hover any card in the menu |
| Play emote | Click the card |
| Stop emote | `X` or `/stopemote` |
| Finger point | `B` (toggle) |
| Crouch / Stand | `CTRL` (toggle) |
| Ragdoll / Get up | `G` (toggle) |

### Commands

| Command       | Description                             |
| -------------- | ---------------------------------------- |
| `/e`           | Open emote menu                         |
| `/e <id>`      | Play emote directly by ID               |
| `/stopemote`   | Stop current emote                      |
| `/fp`          | Debug: trigger finger point (bypasses keybind) |

---

## 🔧 Developer API

### Public Functions (client-side)

```lua
Anim_Play(emote)    -- Play an emote table directly
Anim_Stop()          -- Stop the currently active emote
Anim_IsPlaying()     -- Returns true/false
Anim_GetActive()     -- Returns the active emote table, or nil
```

---

## 📊 Performance

```
Resource: rde_emotes
├─ Idle:     0.00 ms  (no AnimDicts loaded, gestures at Wait(250–500) idle)
├─ Active:   0.01–0.03 ms  (emote playing or finger pointing)
├─ Memory:   0 MB baseline → ~50–300 KB per loaded dict (auto-unloaded)
└─ Network:  Single StateBag write per emote/gesture change, zero polling
```

---

## 📁 File Structure

```
rde_emotes/
├── fxmanifest.lua           ← Resource manifest
├── config.lua               ← All settings, keybinds, locales
├── data/
│   ├── emotes.lua           ← 487 validated native emotes + AddCustomEmotes API
│   └── custom/              ← Drop your custom .lua packs here
│       └── README.md        ← Custom pack format reference
├── client/
│   ├── animations.lua       ← On-demand dict loading, TaskPlayAnim, StateBag sync
│   ├── preview.lua          ← Live orbit camera system
│   ├── client.lua           ← NUI bridge, commands, keybinds, favorites
│   └── gestures.lua         ← 🆕 Finger point (B), Crouch/Stand (CTRL), Ragdoll (G)
├── server/
│   └── server.lua           ← Favorites persistence, validation, rate limiting
├── html/                    ← NUI (index.html, css, js)
├── sql/rde_emotes.sql       ← Database schema
├── LICENSE                  ← RDE Black Flag Source License v6.66
└── README.md                ← You are here
```

---

## 🐛 Troubleshooting

**Finger point not responding to `B`?**
Check **FiveM Settings → Key Bindings → FiveM** → search "Point finger". The keybind registers on first resource start — if it's blank, assign `B` manually. Use `/fp` in chat to verify the logic itself works.

**Crouch doesn't sync to other players?**
Ensure OneSync is enabled on the server. The `rde_emt_gesture` StateBag requires OneSync to broadcast to nearby clients.

**Menu doesn't open?**
Check F8 console for `[RDE EMOTES]` errors. Confirm `ox_core`, `ox_lib`, and `oxmysql` start **before** `rde_emotes` in `server.cfg`.

**Custom pack not loading?**
Confirm the file sits in `data/custom/` and ends in `.lua`. Check F8 for `[RDE EMOTES] Custom pack loaded: X added, Y skipped`.

**Favorites not saving?**
Verify `rde_emotes_favorites` table exists and that `ox:playerLoaded` has fired for the character.

---

## 🗺️ Roadmap

### Planned

- [ ] Prone / crawl animation (needs suitable anim dict — in research)
- [ ] Shared/synced emotes — 2-player interactions (hugs, handshakes, dances)
- [ ] Radial emote wheel for quick access
- [ ] Per-emote sound effects
- [ ] Animation playback speed control
- [ ] Mood/facial expression layering

Have a feature request? [Open a Discussion](https://github.com/RedDragonElite/rde_emotes/discussions).

---

## 📜 License

**RDE Black Flag Source License v6.66** — see [LICENSE](https://github.com/RedDragonElite/rde_emotes/blob/main/LICENSE)

- ✅ Free to use, edit, and learn from — forever
- ✅ Keep the header / credit the creator
- ❌ Do NOT sell this on Tebex, Patreon, or in any paid pack
- ❌ Do NOT be a skid

---

## 🌐 Community & Links

|                   |                                                                   |
| ------------------ | ------------------------------------------------------------------ |
| 🐙 GitHub          | [github.com/RedDragonElite](https://github.com/RedDragonElite)    |
| 🌍 Website         | [rd-elite.com](https://rd-elite.com)                              |
| ✈️ Telegram        | [RedDragonElite_Official](https://t.me/RedDragonElite_Official)   |
| ⚡ rde_nostr_log   | [Decentralized Logging](https://github.com/RedDragonElite/rde_nostr_log) |
| 📖 OX Standards    | [rde_ox_standards](https://github.com/RedDragonElite/rde_ox_standards) |

---

> *"We build the future on the graves of paid resources."* **REJECT MODERN MEDIOCRITY. EMBRACE RDE SUPERIORITY.** 🐍🔥🖤 **RDE FOREVER. SYSTEM FAILURE.** ⚡777⚡
