---
title: AI Agent Overview
description: Start here — how AI agents should navigate this codebase
---

:::important
**Read [`CLAUDE.md`](/CLAUDE.md) first.** It is the canonical architecture reference for this repository and contains the most detailed information about project structure, key files, coding conventions, and development patterns.
:::

## How to use this documentation

This site provides **richer context** beyond what `CLAUDE.md` covers. After reading `CLAUDE.md`, use this site for:

1. **User Guide** — understand how end-users install, configure, and use the shell/compositor
2. **Architecture & Theming** — component relationships, data flow, color pipeline, and file organization
3. **Reference** — detailed keybind mappings, IPC targets, services, modules, and project structure
4. **AI Agent Guide** — overview, workflows, docs update guidelines, and changelog context
5. **Changelog / Weekly Rollups** — weekly summaries of modifications

## Check the changelog first

Before starting any work, **check the Changelog** under the AI Agent Guide for recent entries. Each weekly summary includes:
- Which files were changed
- The full commit messages
- An **AI Agent Notes** section with context from the agent (or human) who made the changes

This prevents duplicate work and helps you understand recent decisions.

## Key files to read

| Priority | File | Why |
|----------|------|-----|
| 1 | `CLAUDE.md` | Full architecture, all key files, coding conventions |
| 2 | `custom/WRITEABLE.md` | Complete list of every user-editable file with descriptions |
| 3 | `custom/README.md` | How the custom additions system works |
| 4 | `custom/EDITED.md` | Changelog of fork-specific modifications |
| 5 | This site | Richer context, usage guides, troubleshooting, reference |

## Repository structure at a glance

```
iNiR/
├── CLAUDE.md                    # ← Read this first
├── docs/                        # This documentation site (Astro Starlight)
├── shell.qml                    # Entry point for Quickshell shell
├── settings.qml                 # Settings entry point (QML)
├── welcome.qml                  # Welcome setup entry point (QML)
├── services/                    # Quickshell system services (QML)
├── modules/                     # UI components (QML)
├── defaults/                    # Default configurations (config.json)
├── custom/                      # Install-time custom additions / scripts
│   ├── README.md
│   ├── WRITEABLE.md
│   ├── EDITED.md
│   ├── packages.sh
│   ├── files.sh
│   ├── commands.sh
│   ├── misc.sh
│   └── Notes/                   # Obsidian Notes (Om's Palace)
├── dots/                        # System config templates (.config/niri, etc)
├── sdata/                       # Installer hook scripts and manifests
└── setup                        # TUI shell installer/manager script
```

## What NOT to do

- **Don't modify files listed in `sdata/runtime-root-files.txt` and `sdata/runtime-payload-dirs.txt` directly** unless implementing a feature or bug fix — these are managed files that are overwritten on updates.
- **Don't modify QML files** in `modules/` or `services/` directly to change personal configurations — use the Settings app or write overrides through `custom/`.
- **Don't forget to update docs** — after making any code change, update the relevant guide page and include details for the changelog. See [Updating Docs](/ai-agents/03-update-docs/).
