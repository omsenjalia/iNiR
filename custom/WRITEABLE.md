# Writeable Files Guide

This document provides a reference of files and locations you can safely edit in this repository to make iNiR your own. Files and directories listed here are preserved across updates or are dedicated configuration templates.

---

## File Structure & Safe Editing Zones

### 1. `custom/` - Personal Extensions & Notes
All scripts and documents in this directory are fully writeable and are never overwritten during updates.
- `custom/packages.sh` — packages to install
- `custom/files.sh` — file-copy operations
- `custom/commands.sh` — custom post-install commands
- `custom/misc.sh` — helper customizations
- `custom/Notes/` — Obsidian vault (Om's Palace)

### 2. `defaults/niri/config.d/` - Niri Compositor Snippets
- `90-user-extra.kdl` — Sourced last in Niri's configuration. Use this file to add user-specific window rules, binds, or layout adjustments.

### 3. Config System
- `defaults/config.json` — The central configuration defaults.
- `~/.config/illogical-impulse/config.json` — Active runtime configuration file. (Editable via the Settings app or directly).

### 4. `dots/` - System config templates
Templates for other apps like foot, kitty, fuzzel, and GTK that are installed to your `$HOME` directory. You can modify these directly to change default themes and behaviors.
