---
title: Architecture
description: Component relationships, data flow, and key file locations for AI agents
---

## Component overview

The iNiR desktop environment consists of three major subsystems:

```
┌──────────────────────────────────────────┐
│                Niri (Compositor)         │
│  ┌─────────────────┐  ┌────────────────┐ │
│  │ config.kdl      │  │ config.d/*.kdl │ │
│  │ (runtime/dist)  │  │ (templates)    │ │
│  └────────┬────────┘  └────────┬───────┘ │
│           └──────────┬─────────┘         │
│                      ▼                   │
│            Niri runtime configuration    │
└──────────────────┬───────────────────────┘
                   │ IPC / Socket
                   ▼
┌──────────────────────────────────────────┐
│         Quickshell (Shell / UI)           │
│  ┌──────────┐ ┌──────────┐ ┌──────────┐  │
│  │ shell.qml│ │ Services │ │ Modules  │  │
│  │ (entry)  │ │ (singletons)│ (UI)   │  │
│  └────┬─────┘ └────┬─────┘ └────┬────┘  │
│       └─────────────┼────────────┘       │
│                     ▼                    │
│           config.json (runtime)          │
└──────────────────┬───────────────────────┘
                   │ color generation
                   ▼
┌──────────────────────────────────────────┐
│         Matugen (Color Theming)           │
│  wallpaper → Material Design 3 colors    │
│  → CSS/QML/GTK templates                 │
└──────────────────────────────────────────┘
```

## Niri config system

### Snippets & Generation

Niri configurations are managed through KDL snippet files located in `defaults/niri/config.d/`. These files are merged and populated during the setup and update phases to generate the active `~/.config/niri/config.kdl` file:

- `10-input-and-cursor.kdl` — Mouse, touchpad, and keyboard input settings
- `20-layout-and-overview.kdl` — Window layout rules and workspace structures
- `30-window-rules.kdl` — Specific window behavior and routing rules
- `40-environment.kdl` — Environment variables
- `50-startup.kdl` — Autostart applications and scripts
- `60-animations.kdl` — Niri window animation settings
- `70-binds.kdl` — Keybindings (including launcher commands and global overrides)
- `80-layer-rules.kdl` — Rules for visual shell layers (e.g. notifications, status bars)
- `90-user-extra.kdl` — User-defined overrides (this file is sourced last)

## Quickshell architecture

### Entry point

`~/iNiR/shell.qml` is the main entry point for the desktop interface, running in the Quickshell engine. It loads:

- **Panel families** — Material ii family (`ShellIiPanels.qml`) and Waffle family (`ShellWafflePanels.qml`)
- **Services** — Singletons located in `services/` for hardware, audio, notifications, and network integrations
- **Config** — `modules/common/Config.qml` manages user preferences and writes to `config.json`

### Key services

| Service | File | Purpose |
|---------|------|---------|
| Config | `modules/common/Config.qml` | Handles runtime JSON configuration |
| Appearance | `modules/common/Appearance.qml` | Manage visual styles and dynamic Material You colors |
| NiriService | `services/NiriService.qml` | Niri compositor IPC integration (workspaces, window lists, focus actions) |
| Wallpapers | `services/Wallpapers.qml` | Wallpaper selector and hooks to color theme updates |
| Audio | `services/Audio.qml` | PipeWire/WirePlumber control (volume, mute, per-app mixers) |
| PowerProfilePersistence | `services/PowerProfilePersistence.qml` | Manages UPower power profiles and persists choices |

### Config persistence

`Config.qml` → `JsonAdapter` → `config.json` (located at `~/.config/illogical-impulse/config.json`).

:::note
Deeply nested property updates in QML do not automatically trigger the `JsonAdapter` write signal. If you modify config options directly in code, always invoke the `save()` or `setNestedValue()` methods to ensure changes are written to disk.
:::

## Install & Custom Additions system

The installer/manager `./setup` orchestrates system packages, file mapping, and custom additions. 

The custom additions system operates from `custom/` in the repository root:
- Sourced at the end of both `setup install` and `setup update`
- Executes hook scripts:
  - `custom/packages.sh` — installs extra user-defined packages
  - `custom/files.sh` — copies personal dotfiles
  - `custom/commands.sh` — runs configuration or compile commands
  - `custom/misc.sh` — miscellaneous adjustments

## Color pipeline

```
Wallpaper image
    ↓ matugen
Material Design 3 palette
    ↓ scripts/colors/applycolor.sh
├── GTK 3/4 CSS (gtk.css)
├── Quickshell QML (Appearance.qml visual tokens)
└── Individual app themes (foot, kitty, fuzzel, Firefox, VS Code, etc.)
```
