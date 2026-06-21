---
title: "README"
description: "Custom addition: README"
---

# Custom Dotfiles Extension

This folder is for **your personal additions** to the iNiR dotfiles. It runs at the end of `./setup install` and `./setup update`.

## Structure

```
custom/
├── README.md      ← You are here
├── packages.sh    ← Extra packages to install
├── files.sh      ← Extra files to copy
├── commands.sh   ← Extra commands to run
├── misc.sh       ← Miscellaneous custom items
└── Notes/        ← Obsidian Notes Vault (Om's Palace)
```

## How It Works

During `./setup install` and `./setup update`, after all core installation/synchronization steps complete, the setup script executes `sdata/subcmd-install/4.custom.sh`, which sources all `custom/*.sh` scripts and executes their functions. Your files in this directory are preserved across updates and won't be overwritten.

## File-by-File Guide

- `packages.sh`: Define extra packages to install (e.g. `zen-browser`).
- `files.sh`: Copy additional config files (e.g. into `$HOME`).
- `commands.sh`: Run arbitrary shell commands during installation.
- `misc.sh`: Miscellaneous operations like setting permissions, symlinks, etc.
- `Notes/`: Verbatim Obsidian Notes vault.
