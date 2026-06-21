---
title: Workflow
description: Step-by-step development workflows for common tasks
---

## Adding a keybind

1. Edit `defaults/niri/config.d/70-binds.kdl`
2. Add the bind using Niri KDL syntax:
   ```kdl
   Mod+Shift+T { spawn "inir" "altSwitcher" "next"; }
   ```
3. Test live by reloading Niri's config:
   ```bash
   niri msg action load-config-file
   ```
4. Update `docs/src/content/docs/reference/keybinds.md` keybind tables
5. Add a note to `custom/EDITED.md`

## Adding a Quickshell service

1. Create a QML singleton file in `services/YourService.qml`:
   ```qml
   pragma Singleton
   import QtQuick
   import Quickshell
   import Quickshell.Io
   import qs.services

   QtObject {
       // IPC handler for external control (if needed)
       IpcHandler {
           target: "yourService"
           
           // All handlers must return typed values
           function runCommand(args): string {
               // your code here
               return "success"
           }
       }
   }
   ```
2. Register the service in `services/qmldir`:
   ```qmldir
   singleton YourService 1.0 YourService.qml
   ```
3. Force-instantiate it in `shell.qml` using a dummy property binding if it needs to autoload on startup.
4. Run the IPC registry generator to expose it to the `inir` CLI:
   ```bash
   python3 scripts/lib/generate-ipc-registry.py
   ```
5. Update `CLAUDE.md` key services table and `docs/src/content/docs/reference/services.md`.

## Adding a settings block / page

1. Locate or create a page in `modules/settings/` (e.g. `GeneralConfig.qml`).
2. Use standard controls and import custom modules. To modify the central config options, use `Config.setNestedValue()`:
   ```qml
   onCheckedChanged: {
       Config.setNestedValue("battery.notifyLow", checked)
   }
   ```
3. Ensure any new keys are registered in the schema file `modules/common/Config.qml` and defaults `defaults/config.json`.

## Adding a custom package / file / command hook

1. Open `custom/packages.sh`, `custom/files.sh`, `custom/commands.sh`, or `custom/misc.sh`.
2. Add your customization function (e.g. adding a package name line by line inside the function body in `packages.sh`).
3. Apply changes by running:
   ```bash
   ./setup install --skip-deps
   ```

## Syncing with upstream (snowarch/iNiR)

1. Fetch upstream changes:
   ```bash
   git fetch upstream
   ```
2. Merge:
   ```bash
   git merge upstream/main
   ```
3. Resolve any conflicts:
   - Accept upstream deletions/changes for files in `sdata/runtime-payload-dirs.txt`.
   - Preserve custom fork modifications under `custom/` and settings integrations.
4. Test:
   ```bash
   qs -c shell.qml   # Verify Quickshell loads
   niri -c ~/.config/niri/config.kdl --check  # Verify Niri config syntax
   ```

## Testing changes

### Quickshell shell
```bash
# Force reload Quickshell
inir restart

# Test single component
qs -p modules/settings/GeneralConfig.qml
```

### Niri
```bash
# Reload Niri config
niri msg action load-config-file
```

### Full install test
```bash
./setup install
```
