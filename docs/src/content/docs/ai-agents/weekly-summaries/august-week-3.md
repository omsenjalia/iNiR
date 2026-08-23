---
title: "Weekly Summary: august week 3"
date: 23/08/26
week_start: 16/08/26
week_end: 22/08/26
---

### fix(idle): clean up orphaned swayidle after restarts 

**Date:** 20/08/26 | **Author:** snowarch | **Commit:** `0edcad9`


## Changed Files

- `scripts/inir`
- `services/Idle.qml`

## Commit Message

```
fix(idle): clean up orphaned swayidle after restarts

swayidle was launched detached and survived inir.service restarts,
accumulating processes in the cgroup. Idle.qml now manages it via
Process and cleanup-orphans includes it in ExecStopPost.
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### feat(bar): add per-widget clock font and size overrides 

**Date:** 20/08/26 | **Author:** snowarch | **Commit:** `14fdf4d`


## Changed Files

- `modules/bar/ClockWidget.qml`
- `modules/barM3/ClockWidget.qml`
- `modules/common/Config.qml`
- `modules/settings/BarConfig.qml`

## Commit Message

```
feat(bar): add per-widget clock font and size overrides

Allow overriding font family and pixel size for time and date in the
classic and M3 bar clock widgets. Empty or 0 inherits Appearance
tokens. Expose controls in the bar settings page.
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### fix(fish): use explicit --icons=auto in eza alias 

**Date:** 20/08/26 | **Author:** Apologizes | **Commit:** `1b27711`


## Changed Files

- `dots/.config/fish/config.fish`

## Commit Message

```
fix(fish): use explicit --icons=auto in eza alias
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### fix(themegen): preserve VSCode settings on JSONC parse 

**Date:** 20/08/26 | **Author:** snowarch | **Commit:** `1cf4e40`


## Changed Files

- `scripts/colors/vscode_themegen/main.go`

## Commit Message

```
fix(themegen): preserve VSCode settings on JSONC parse

VSCode settings.json is JSONC. The previous parser failed on comments
and trailing commas, renamed the original file, and wrote a fresh one
with only the color theme key. Strip JSONC syntax before parsing and
return an error without touching the file if parsing still fails.

Closes #224
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### fix(scripts): fix mascot script executable permissions 

**Date:** 20/08/26 | **Author:** snowarch | **Commit:** `221703c`


## Changed Files

- `scripts/lib/mascot-pack.py`
- `scripts/test-mascot-pack-flow.sh`

## Commit Message

```
fix(scripts): fix mascot script executable permissions

mascot-pack.py and test-mascot-pack-flow.sh had shebangs but mode 644.
Align with the rest of the repo's scripts at 755.
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### fix(update): run required migrations when already up to date 

**Date:** 20/08/26 | **Author:** snowarch | **Commit:** `25b209d`


## Changed Files

- `setup`

## Commit Message

```
fix(update): run required migrations when already up to date

The "already up to date" path in run_update only offered interactive
migrations and skipped run_migrations_auto. Required migrations were
never auto-applied when there was no git pull, and with -y no
migrations ran at all. Now matches the sync and package-managed paths:
run_migrations_auto first, then offer optional migrations.
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### fix(doc): correct dashboard IPC hint 

**Date:** 20/08/26 | **Author:** Eth L | **Commit:** `51eb446`


## Changed Files



## Commit Message

```
fix(doc): correct dashboard IPC hint
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### fix(migration): escape apostrophe in 035 awk script 

**Date:** 20/08/26 | **Author:** snowarch | **Commit:** `66fad6a`


## Changed Files

- `sdata/migrations/035-hide-xembedsniproxy-window.sh`

## Commit Message

```
fix(migration): escape apostrophe in 035 awk script

The awk script inside migration 035 used "KDE's" with an unescaped
apostrophe inside a bash single-quoted string, which terminated the awk
string early and caused 'unterminated string' errors on every run.
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### perf(startup): reduce QML scan and split critical panels 

**Date:** 20/08/26 | **Author:** snowarch | **Commit:** `692ff52`


## Changed Files

- `ARCHITECTURE.md`
- `ShellIiPanels.qml`
- `ShellWafflePanels.qml`
- `defaults/niri/config.d/30-window-rules.kdl`
- `modules/background/qmldir`
- `modules/background/widgets/mediaControls/qmldir`
- `modules/background/widgets/qmldir`
- `modules/background/widgets/weather/qmldir`
- `modules/bar/qmldir`
- `modules/bar/weather/qmldir`
- `modules/barM3/qmldir`
- `modules/cheatsheet/qmldir`
- `modules/clipboard/qmldir`
- `modules/common/qmldir`
- `modules/common/utils/qmldir`
- `modules/common/widgets/widgetCanvas/qmldir`
- `modules/dock/qmldir`
- `modules/ii/ShellIiPanelsImpl.qml`
- `modules/ii/critical/ShellIiCriticalPanels.qml`
- `modules/ii/overlay/crosshair/qmldir`
- `modules/ii/overlay/floatingImage/qmldir`
- `modules/ii/overlay/fpsLimiter/qmldir`
- `modules/ii/overlay/notes/qmldir`
- `modules/ii/overlay/notifications/qmldir`
- `modules/ii/overlay/qmldir`
- `modules/ii/overlay/recorder/qmldir`
- `modules/ii/overlay/resources/qmldir`
- `modules/ii/overlay/volumeMixer/qmldir`
- `modules/ii/sidebarRight/volumeMixer/qmldir`
- `modules/lock/qmldir`
- `modules/mascot/qmldir`
- `modules/mediaControls/qmldir`
- `modules/notificationPopup/qmldir`
- `modules/onScreenDisplay/qmldir`
- `modules/onScreenKeyboard/qmldir`
- `modules/overview/qmldir`
- `modules/pill/qmldir`
- `modules/polkit/qmldir`
- `modules/recordingOsd/qmldir`
- `modules/regionSelector/qmldir`
- `modules/screenCorners/qmldir`
- `modules/sessionScreen/qmldir`
- `modules/sidebarLeft/aiChat/qmldir`
- `modules/sidebarLeft/qmldir`
- `modules/sidebarLeft/translator/qmldir`
- `modules/sidebarRight/bluetoothDevices/qmldir`
- `modules/sidebarRight/hotspot/qmldir`
- `modules/sidebarRight/nightLight/qmldir`
- `modules/sidebarRight/notifications/qmldir`
- `modules/sidebarRight/qmldir`
- `modules/sidebarRight/quickToggles/androidStyle/qmldir`
- `modules/sidebarRight/quickToggles/classicStyle/qmldir`
- `modules/sidebarRight/quickToggles/qmldir`
- `modules/sidebarRight/volumeMixer/qmldir`
- `modules/sidebarRight/wifiNetworks/qmldir`
- `modules/verticalBar/qmldir`
- `modules/waffle/ShellWafflePanelsImpl.qml`
- `modules/waffle/critical/ShellWaffleCriticalPanels.qml`
- `modules/wallpaperSelector/qmldir`
- `qmldir`
- `sdata/migrations/035-hide-xembedsniproxy-window.sh`
- `shell.qml`

## Commit Message

```
perf(startup): reduce QML scan and split critical panels

Split ii and Waffle panels into a critical host (background, bar,
dock) and a deferred host for the rest. Move IPC routers to the root
so commands stay available while heavy panels load. Switch region,
tiling, and wallpaper selectors to source-based loading to reduce
scanner reach.

Add explicit qmldir files across modules so Quickshell does not
synthesize them. Hide the xembedsniproxy window during restarts with
a Niri rule and migration 035.

Closes #221
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### fix(windows): resolve shared app identities per window 

**Date:** 20/08/26 | **Author:** caml07 | **Commit:** `7e1b927`


## Changed Files

- `defaults/config.json`
- `docs/CONFIG_SYSTEM.md`
- `modules/altSwitcher/AltSwitcher.qml`
- `modules/altSwitcher/AltSwitcherNoVisual.qml`
- `modules/bar/BarTaskbar.qml`
- `modules/bar/BarTaskbarPreview.qml`
- `modules/common/Config.qml`
- `modules/dock/DockApps.qml`
- `modules/dock/DockWindowPreview.qml`
- `modules/waffle/taskview/WaffleTaskViewContent.qml`
- `services/AppSearch.qml`
- `services/TaskbarApps.qml`

## Commit Message

```
fix(windows): resolve shared app identities per window

Add opt-in windows.appIdentityRules for apps whose windows share one compositor app_id (e.g. browser PWAs). The resolver is applied consistently to ii and Waffle taskbars, dock grouping, previews, task view, Alt+Tab, icons, and launch identity. Default rule list is empty.
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### fix(niri): stop Steam toasts from stealing focus 

**Date:** 20/08/26 | **Author:** snowarch | **Commit:** `7f59086`


## Changed Files

- `defaults/niri/config.d/30-window-rules.kdl`
- `sdata/migrations/036-steam-toast-no-focus.sh`

## Commit Message

```
fix(niri): stop Steam toasts from stealing focus

Steam notification toasts captured keyboard focus from the active app
when they appeared. Add open-floating true and open-focused false to
the existing Steam toast window rule.

Closes #223
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### fix(monitors): handle disconnect and idle power-off without flicker 

**Date:** 20/08/26 | **Author:** David | **Commit:** `8f2cc36`


## Changed Files

- `scripts/lib/ipc-registry.sh`
- `services/Brightness.qml`
- `services/Idle.qml`
- `services/brightnessPolicy.js`

## Commit Message

```
fix(monitors): handle disconnect and idle power-off without flicker

Fix leaked monitor objects on hotplug/DPMS, external HDMI/DP No-Signal loops during idle power-off, and brightness resetting to 0 on wake. Reconciles live outputs instead of rebuilding, ignores screen changes while asleep, and restores last-good brightness on wake.
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### chore: exclude agent files from the repository 

**Date:** 20/08/26 | **Author:** snowarch | **Commit:** `d01ef85`


## Changed Files

- `.gitignore`

## Commit Message

```
chore: exclude agent files from the repository

Extend gitignore to AGENTS.md and .agents/ at any level in the tree,
not just the root.
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### fix(spotify): repair missing spicetify wrapper asset 

**Date:** 20/08/26 | **Author:** Yuka | **Commit:** `f155432`


## Changed Files

- `scripts/colors/apply-spicetify-theme.sh`
- `scripts/setup/README.md`
- `scripts/setup/_lib.sh`
- `scripts/setup/spotify.sh`

## Commit Message

```
fix(spotify): repair missing spicetify wrapper asset

Detect and build the missing spicetifyWrapper.js for source-built Spicetify v2.44+ packages that omit it. Reuses cached paru/yay source, falls back to downloading the matching release, builds with pnpm (npm fallback), and verifies the patched XPUI directory. Also preserves the wrapper across future theme reapplies.
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### fix(dock): clear notification badge on app click 

**Date:** 20/08/26 | **Author:** snowarch | **Commit:** `f199fdc`


## Changed Files

- `modules/dock/DockAppButton.qml`
- `services/Notifications.qml`

## Commit Message

```
fix(dock): clear notification badge on app click

Dock notification badges counted all stored notifications per app
(history), not just unread ones. The only way to clear the badge was
opening the sidebar and dismissing notifications. Now countForApp
counts only popup (unread) notifications, consistent with the taskbar
unread counter, and clicking the dock icon marks that app's
notifications as read via markReadForApp.
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### fix(qml): guard null accesses in runtime delegates 

**Date:** 20/08/26 | **Author:** snowarch | **Commit:** `f8d1f46`


## Changed Files

- `modules/ii/overlay/OverlayContent.qml`
- `modules/ii/overlay/volumeMixer/VolumeMixer.qml`
- `modules/sidebarLeft/anime/BooruResponse.qml`

## Commit Message

```
fix(qml): guard null accesses in runtime delegates

Add null guards in BooruResponse for responseData accesses during
model resets. Filter undefined widgets before DelegateChooser in
OverlayContent. Sync the VolumeMixer device popup with the active
SwipeView page.
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### Merge branch 'upstream/main' into main 

**Date:** 22/08/26 | **Author:** omsenjalia | **Commit:** `4c67b98`


## Changed Files

- `.gitignore`
- `ARCHITECTURE.md`
- `ShellIiPanels.qml`
- `ShellWafflePanels.qml`
- `defaults/config.json`
- `defaults/niri/config.d/30-window-rules.kdl`
- `docs/src/content/docs/architecture-theming/config-system.md`
- `dots/.config/fish/config.fish`
- `modules/altSwitcher/AltSwitcher.qml`
- `modules/altSwitcher/AltSwitcherNoVisual.qml`
- `modules/background/qmldir`
- `modules/background/widgets/mediaControls/qmldir`
- `modules/background/widgets/qmldir`
- `modules/background/widgets/weather/qmldir`
- `modules/bar/BarTaskbar.qml`
- `modules/bar/BarTaskbarPreview.qml`
- `modules/bar/ClockWidget.qml`
- `modules/bar/qmldir`
- `modules/bar/weather/qmldir`
- `modules/barM3/ClockWidget.qml`
- `modules/barM3/qmldir`
- `modules/cheatsheet/qmldir`
- `modules/clipboard/qmldir`
- `modules/common/Config.qml`
- `modules/common/qmldir`
- `modules/common/utils/qmldir`
- `modules/common/widgets/widgetCanvas/qmldir`
- `modules/dock/DockAppButton.qml`
- `modules/dock/DockApps.qml`
- `modules/dock/DockWindowPreview.qml`
- `modules/dock/qmldir`
- `modules/ii/ShellIiPanelsImpl.qml`
- `modules/ii/critical/ShellIiCriticalPanels.qml`
- `modules/ii/overlay/OverlayContent.qml`
- `modules/ii/overlay/crosshair/qmldir`
- `modules/ii/overlay/floatingImage/qmldir`
- `modules/ii/overlay/fpsLimiter/qmldir`
- `modules/ii/overlay/notes/qmldir`
- `modules/ii/overlay/notifications/qmldir`
- `modules/ii/overlay/qmldir`
- `modules/ii/overlay/recorder/qmldir`
- `modules/ii/overlay/resources/qmldir`
- `modules/ii/overlay/volumeMixer/VolumeMixer.qml`
- `modules/ii/overlay/volumeMixer/qmldir`
- `modules/ii/sidebarRight/volumeMixer/qmldir`
- `modules/lock/qmldir`
- `modules/mascot/qmldir`
- `modules/mediaControls/qmldir`
- `modules/notificationPopup/qmldir`
- `modules/onScreenDisplay/qmldir`
- `modules/onScreenKeyboard/qmldir`
- `modules/overview/qmldir`
- `modules/pill/qmldir`
- `modules/polkit/qmldir`
- `modules/recordingOsd/qmldir`
- `modules/regionSelector/qmldir`
- `modules/screenCorners/qmldir`
- `modules/sessionScreen/qmldir`
- `modules/settings/BarConfig.qml`
- `modules/sidebarLeft/aiChat/qmldir`
- `modules/sidebarLeft/anime/BooruResponse.qml`
- `modules/sidebarLeft/qmldir`
- `modules/sidebarLeft/translator/qmldir`
- `modules/sidebarRight/bluetoothDevices/qmldir`
- `modules/sidebarRight/hotspot/qmldir`
- `modules/sidebarRight/nightLight/qmldir`
- `modules/sidebarRight/notifications/qmldir`
- `modules/sidebarRight/qmldir`
- `modules/sidebarRight/quickToggles/androidStyle/qmldir`
- `modules/sidebarRight/quickToggles/classicStyle/qmldir`
- `modules/sidebarRight/quickToggles/qmldir`
- `modules/sidebarRight/volumeMixer/qmldir`
- `modules/sidebarRight/wifiNetworks/qmldir`
- `modules/verticalBar/qmldir`
- `modules/waffle/ShellWafflePanelsImpl.qml`
- `modules/waffle/critical/ShellWaffleCriticalPanels.qml`
- `modules/waffle/taskview/WaffleTaskViewContent.qml`
- `modules/wallpaperSelector/qmldir`
- `qmldir`
- `scripts/colors/apply-spicetify-theme.sh`
- `scripts/colors/vscode_themegen/main.go`
- `scripts/inir`
- `scripts/lib/ipc-registry.sh`
- `scripts/lib/mascot-pack.py`
- `scripts/setup/README.md`
- `scripts/setup/_lib.sh`
- `scripts/setup/spotify.sh`
- `scripts/test-mascot-pack-flow.sh`
- `sdata/migrations/035-hide-xembedsniproxy-window.sh`
- `sdata/migrations/036-steam-toast-no-focus.sh`
- `services/AppSearch.qml`
- `services/Brightness.qml`
- `services/Idle.qml`
- `services/Notifications.qml`
- `services/TaskbarApps.qml`
- `services/brightnessPolicy.js`
- `setup`
- `shell.qml`

## Commit Message

```
Merge branch 'upstream/main' into main
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

