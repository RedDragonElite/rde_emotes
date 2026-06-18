# 🐉 RDE Emotes — Custom Pack System

Drop your `.lua` emote pack files into this folder.  
They are **automatically loaded** via fxmanifest wildcard — no config changes needed.

---

## 📁 Structure

```
rde_emotes/
├── data/
│   └── custom/
│       ├── README.md          ← you are here
│       ├── my_dances.lua      ← your pack, auto-loaded
│       └── another_pack.lua   ← another pack, also auto-loaded
└── stream/
    └── [My Pack]/             ← drop your .ycd stream files here
        └── my_anim.ycd        ← FiveM streams this automatically
```

---

## ✍️ Pack Format

Create a `.lua` file in this folder and call `AddCustomEmotes({...})`:

```lua
-- data/custom/my_pack.lua

AddCustomEmotes({

    -- ── Animation Emote (TaskPlayAnim) ──────────────────────────
    {
        id       = 'my_dance',           -- unique ID (no spaces, no special chars)
        label    = 'My Custom Dance',    -- display name in menu
        type     = 'anim',              -- 'anim' = TaskPlayAnim
        dict     = 'my_dict@',          -- animation dictionary (from your .ycd)
        clip     = 'my_clip_name',      -- animation clip name
        loop     = true,                -- true = loops, false = plays once
        category = 'dance',             -- optional: auto-detected if omitted
        tags     = { 'dance', 'custom', 'meine anim' },  -- optional: search keywords
    },

    -- ── Scenario Emote (TaskStartScenarioInPlace) ───────────────
    {
        id       = 'my_scenario',
        label    = 'My Scenario',
        type     = 'scenario',
        scenario = 'WORLD_HUMAN_SMOKING',  -- GTA5 scenario name
        loop     = true,
        category = 'idle',
    },

    -- ── With Prop ───────────────────────────────────────────────
    {
        id    = 'my_prop_emote',
        label = 'Hold Beer',
        type  = 'anim',
        dict  = 'my_dict@',
        clip  = 'hold_beer',
        loop  = true,
        prop  = {
            model    = 'prop_beer_amopen',  -- prop model name
            bone     = 28422,               -- bone ID (28422 = right hand)
            offset   = { x=0.0, y=0.0, z=0.0 },
            rotation = { x=0.0, y=0.0, z=0.0 },
        },
    },
})
```

---

## 🏷️ Categories

| id          | Label       | Auto-detected by keywords                            |
|-------------|-------------|------------------------------------------------------|
| `dance`     | Tanzen      | dance, twerk, shuffle, rave, groove, club...         |
| `sit`       | Sitzen      | sit, kneel, crouch, lay, sleep, yoga, floor...       |
| `gesture`   | Gesten      | wave, point, bow, salute, clap, flex, dab...         |
| `idle`      | Idles       | stand, lean, idle, guard, hang, pose, statue...      |
| `music`     | Musik       | guitar, drum, dj, sing, piano, sax, instrument...   |
| `reaction`  | Reaktionen  | laugh, cry, angry, scared, shocked, facepalm...      |
| `celebrate` | Feiern      | victory, win, cheer, party, champion...              |
| `social`    | Social      | phone, text, selfie, photo, film, chat...            |
| `work`      | Arbeit      | atm, drill, hammer, weld, garden, medic, fish...     |
| `misc`      | Sonstiges   | fallback — everything else                           |

> **Tip:** If `category` is omitted, `AddCustomEmotes()` auto-detects it from `id` + `label` keywords.

---

## 🎬 Stream Files

Place your `.ycd` animation files in `stream/[Your Pack Name]/`:

```
rde_emotes/
└── stream/
    └── [My Awesome Pack]/
        ├── my_dict@.ycd
        └── another_dict@.ycd
```

FiveM streams these **automatically** — no `fxmanifest.lua` changes required.

The `dict` name in your lua pack **must match** the `.ycd` filename (without extension).

---

## 💡 Tips

- Pack files are loaded **alphabetically** — prefix with numbers to control order: `01_dances.lua`, `02_poses.lua`
- ID conflicts: if two packs use the same `id`, the **last loaded** wins (a warning prints in F8)
- `custom = true` is automatically set on all custom emotes — useful for future filtering
- The pack system is built into `rde_emotes` — no external dependencies, no overhead

---

*Built with 🐉 by Red Dragon Elite | [rd-elite.com](https://rd-elite.com)*
