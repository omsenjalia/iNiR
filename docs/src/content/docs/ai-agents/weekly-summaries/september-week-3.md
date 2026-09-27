---
title: "Weekly Summary: september week 3"
date: 27/09/26
week_start: 20/09/26
week_end: 26/09/26
---

### i18n: add strings for the new iRiS surfaces 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `0ca9ba5`


## Changed Files

- `translations/en_US.json`
- `translations/es_AR.json`

## Commit Message

```
i18n: add strings for the new iRiS surfaces
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### feat(iris): finish edge layouts, themes and surface lifecycle 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `14325f1`


## Changed Files

- `GlobalStates.qml`
- `defaults/config.json`
- `defaults/niri/config.d/80-layer-rules.kdl`
- `docs/IPC.md`
- `modules/common/Config.qml`
- `modules/iris/ShellIrisPanelsImpl.qml`
- `modules/iris/bar/IrisBar.qml`
- `modules/iris/bar/IrisIsland.qml`
- `modules/iris/bar/island/IslandBarZones.qml`
- `modules/iris/bar/island/IslandCompactColumn.qml`
- `modules/iris/bar/island/IslandDesktopPage.qml`
- `modules/iris/bar/island/IslandStackedClock.qml`
- `modules/iris/bar/island/qmldir`
- `modules/iris/components/IrisBubbleGrip.qml`
- `modules/iris/components/IrisGlassPane.qml`
- `modules/iris/components/IrisLightWash.qml`
- `modules/iris/components/IrisMediaBackdrop.qml`
- `modules/iris/components/IrisMorphSurface.qml`
- `modules/iris/components/qmldir`
- `modules/iris/control/IrisControlCenter.qml`
- `modules/iris/control/IrisQuickPanel.qml`
- `modules/iris/dock/IrisDock.qml`
- `modules/iris/edit/IrisEditBar.qml`
- `modules/iris/field/IrisField.frag`
- `modules/iris/field/IrisField.frag.qsb`
- `modules/iris/field/IrisField.qml`
- `modules/iris/field/IrisGlassSource.qml`
- `modules/iris/field/qmldir`
- `modules/iris/frame/IrisFrame.qml`
- `modules/iris/frame/IrisFramePulse.qml`
- `modules/iris/frame/IrisReservations.qml`
- `modules/iris/frame/qmldir`
- `modules/iris/lock/IrisLockSurface.qml`
- `modules/iris/notificationPopup/IrisBanners.qml`
- `modules/iris/palette/IrisPalette.qml`
- `modules/iris/preview/IrisGroupPreview.qml`
- `modules/iris/preview/IrisScreenPreview.qml`
- `modules/iris/preview/IrisTargetPreview.qml`
- `modules/iris/settings/IrisOptions.qml`
- `modules/iris/settings/IrisSetting.qml`
- `modules/iris/settings/IrisSettings.qml`
- `modules/iris/settings/IrisThemes.qml`
- `modules/iris/settings/qmldir`
- `modules/iris/sidebar/IrisSidebar.qml`
- `modules/iris/sidebar/IrisSidebarSection.qml`
- `modules/iris/stage/IrisStage.qml`
- `modules/iris/studio/IrisStudio.qml`
- `modules/iris/style/IrisMood.qml`
- `modules/iris/style/IrisStyle.qml`
- `scripts/lib/ipc-registry.sh`
- `scripts/test-iris-performance-contract.py`
- `scripts/test-local-distribution.sh`
- `services/Notifications.qml`
- `translations/en_US.json`
- `translations/es_AR.json`

## Commit Message

```
feat(iris): finish edge layouts, themes and surface lifecycle
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### fix(anki): scope connectivity checks to Japanese lookup 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `21d9c1e`


## Changed Files

- `modules/settings/ToolsConfig.qml`
- `services/JapaneseDictionary.qml`

## Commit Message

```
fix(anki): scope connectivity checks to Japanese lookup
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### docs(ipc): document iRiS edit, activities, set, adaptive and overlay tool 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `45d9350`


## Changed Files

- `docs/IPC.md`
- `scripts/lib/ipc-registry.sh`

## Commit Message

```
docs(ipc): document iRiS edit, activities, set, adaptive and overlay tool
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### chore(release): finalize 2.31.0 readmes 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `56eb0f9`


## Changed Files

- `docs/readme/README.ar.md`
- `docs/readme/README.de.md`
- `docs/readme/README.es.md`
- `docs/readme/README.fr.md`
- `docs/readme/README.hi.md`
- `docs/readme/README.it.md`
- `docs/readme/README.ja.md`
- `docs/readme/README.ko.md`
- `docs/readme/README.pt.md`
- `docs/readme/README.ru.md`
- `docs/readme/README.zh.md`

## Commit Message

```
chore(release): finalize 2.31.0 readmes
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### feat(wallpaper): rebuild the iRiS gallery and live wallpaper path 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `6b3e14b`


## Changed Files

- `GlobalStates.qml`
- `modules/background/Backdrop.qml`
- `modules/common/Appearance.qml`
- `modules/common/widgets/ThumbnailImage.qml`
- `modules/iris/background/IrisBackground.qml`
- `modules/iris/wallpaper/IrisWallpaperPicker.qml`
- `modules/iris/wallpaper/WallpaperDiscovery.qml`
- `modules/iris/wallpaper/WallpaperEmpty.qml`
- `modules/iris/wallpaper/WallpaperFolders.qml`
- `modules/iris/wallpaper/WallpaperShowcase.qml`
- `modules/iris/wallpaper/WallpaperTile.qml`
- `modules/iris/wallpaper/qmldir`
- `modules/wallpaperSelector/WallpaperSelectorRouter.qml`
- `services/Wallhaven.qml`
- `services/WallpaperListener.qml`
- `services/Wallpapers.qml`
- `services/deferred/AnimeService.qml`

## Commit Message

```
feat(wallpaper): rebuild the iRiS gallery and live wallpaper path
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### feat(setup): enable the Niri focus booster on fresh CachyOS installs 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `702abd2`


## Changed Files

- `sdata/dist-arch/install-deps.sh`
- `sdata/lib/dist-determine.sh`
- `sdata/subcmd-install/3.files.sh`

## Commit Message

```
feat(setup): enable the Niri focus booster on fresh CachyOS installs
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### docs(release): prepare the 2.31.0 candidate 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `77af5e1`


## Changed Files

- `ARCHITECTURE.md`
- `CHANGELOG.md`
- `README.md`
- `VERSION`
- `distro/arch/inir-meta/.SRCINFO`
- `distro/arch/inir-meta/PKGBUILD`
- `distro/arch/inir-shell/.SRCINFO`
- `distro/arch/inir-shell/PKGBUILD`
- `docs/ARCHITECTURE_OVERVIEW.md`
- `docs/IRIS.md`
- `docs/KEYBINDS.md`
- `docs/PANEL_FAMILIES.md`
- `docs/PROJECT_MAP.md`
- `docs/SETUP.md`
- `docs/_Sidebar.md`
- `docs/index.md`
- `docs/readme/README.ar.md`
- `docs/readme/README.de.md`
- `docs/readme/README.es.md`
- `docs/readme/README.fr.md`
- `docs/readme/README.hi.md`
- `docs/readme/README.it.md`
- `docs/readme/README.ja.md`
- `docs/readme/README.ko.md`
- `docs/readme/README.pt.md`
- `docs/readme/README.ru.md`
- `docs/readme/README.zh.md`
- `scripts/lyrics/lyrics.py`
- `sdata/dist-arch/inir-deps/PKGBUILD`

## Commit Message

```
docs(release): prepare the 2.31.0 candidate
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### fix(iris): show native feedback over fullscreen windows 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `7bf1056`


## Changed Files

- `modules/iris/ShellIrisPanelsImpl.qml`
- `modules/iris/bar/IrisIsland.qml`
- `modules/iris/onScreenDisplay/IrisOSD.qml`

## Commit Message

```
fix(iris): show native feedback over fullscreen windows
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### chore: keep iRiS decisions private 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `87d725b`


## Changed Files

- `.gitignore`

## Commit Message

```
chore: keep iRiS decisions private
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### chore(release): publish hero with release notes 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `9574fa4`


## Changed Files

- `scripts/release.sh`

## Commit Message

```
chore(release): publish hero with release notes
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### fix(iris): keep desktop menu without widgets 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `9a5e3b5`


## Changed Files

- `modules/iris/background/IrisBackground.qml`

## Commit Message

```
fix(iris): keep desktop menu without widgets
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### style(welcome): give onboarding a native iRiS presentation 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `a6db935`


## Changed Files

- `welcome.qml`

## Commit Message

```
style(welcome): give onboarding a native iRiS presentation
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### chore(scripts): mark scripts executable 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `c968d73`


## Changed Files

- `scripts/generate-settings-search-index.py`
- `scripts/lib/ipc-registry.sh`
- `scripts/test-detect-sensors.py`
- `scripts/test-runtime-payload.py`

## Commit Message

```
chore(scripts): mark scripts executable
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### feat(iris): add native desktop widget faces and controls 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `cb2036f`


## Changed Files

- `modules/background/Background.qml`
- `modules/background/widgets/AbstractBackgroundWidget.qml`
- `modules/background/widgets/DesktopEditToolbar.qml`
- `modules/background/widgets/EditorialWidget.qml`
- `modules/background/widgets/OrganicEdgeWidget.qml`
- `modules/background/widgets/WidgetEditAction.qml`
- `modules/background/widgets/WidgetManagerPanel.qml`
- `modules/background/widgets/WidgetSurface.qml`
- `modules/background/widgets/battery/BatteryWidget.qml`
- `modules/background/widgets/calendar/CalendarUpcomingWidget.qml`
- `modules/background/widgets/calendar/MonthCalendarWidget.qml`
- `modules/background/widgets/clock/ClockWidget.qml`
- `modules/background/widgets/controls/ControlsWidget.qml`
- `modules/background/widgets/controls/qmldir`
- `modules/background/widgets/dateBadge/DateBadgeWidget.qml`
- `modules/background/widgets/dayProgress/DayProgressWidget.qml`
- `modules/background/widgets/imageConverter/ImageConverterWidget.qml`
- `modules/background/widgets/japaneseTypography/JapaneseTypographyWidget.qml`
- `modules/background/widgets/mascot/MascotWidget.qml`
- `modules/background/widgets/mediaControls/MediaControlsWidget.qml`
- `modules/background/widgets/newsTicker/NewsTickerWidget.qml`
- `modules/background/widgets/notes/NotesWidget.qml`
- `modules/background/widgets/screenTime/ScreenTimeWidget.qml`
- `modules/background/widgets/screenTime/qmldir`
- `modules/background/widgets/systemMonitor/SystemMonitorWidget.qml`
- `modules/background/widgets/timers/TimerWidget.qml`
- `modules/background/widgets/todo/TodoWidget.qml`
- `modules/background/widgets/uptime/UptimeWidget.qml`
- `modules/background/widgets/userCard/UserCardWidget.qml`
- `modules/background/widgets/visualizer/VisualizerWidget.qml`
- `modules/background/widgets/weather/WeatherWidget.qml`
- `modules/background/widgets/worldClock/WorldClockWidget.qml`
- `modules/iris/widgets/FaceAction.qml`
- `modules/iris/widgets/FaceAvatar.qml`
- `modules/iris/widgets/FaceChoice.qml`
- `modules/iris/widgets/FaceDial.qml`
- `modules/iris/widgets/FaceFigure.qml`
- `modules/iris/widgets/FaceHeader.qml`
- `modules/iris/widgets/FaceText.qml`
- `modules/iris/widgets/IrisAgendaFace.qml`
- `modules/iris/widgets/IrisBatteryFace.qml`
- `modules/iris/widgets/IrisCalendarFace.qml`
- `modules/iris/widgets/IrisClockFace.qml`
- `modules/iris/widgets/IrisControlsFace.qml`
- `modules/iris/widgets/IrisDateFace.qml`
- `modules/iris/widgets/IrisDayFace.qml`
- `modules/iris/widgets/IrisFaceData.qml`
- `modules/iris/widgets/IrisNewsFace.qml`
- `modules/iris/widgets/IrisNotesFace.qml`
- `modules/iris/widgets/IrisNowPlayingFace.qml`
- `modules/iris/widgets/IrisProfileFace.qml`
- `modules/iris/widgets/IrisScreenTimeFace.qml`
- `modules/iris/widgets/IrisSizeGrip.qml`
- `modules/iris/widgets/IrisTimerFace.qml`
- `modules/iris/widgets/IrisTodoFace.qml`
- `modules/iris/widgets/IrisUptimeFace.qml`
- `modules/iris/widgets/IrisVitalsFace.qml`
- `modules/iris/widgets/IrisWeatherFace.qml`
- `modules/iris/widgets/IrisWidgetControls.qml`
- `modules/iris/widgets/IrisWidgetFace.qml`
- `modules/iris/widgets/IrisWidgetGallery.qml`
- `modules/iris/widgets/IrisWorldClockFace.qml`
- `modules/iris/widgets/qmldir`
- `scripts/images/least_busy_region.py`
- `services/NiriService.qml`
- `services/WidgetPowerManager.qml`

## Commit Message

```
feat(iris): add native desktop widget faces and controls
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### feat(welcome): make iRiS onboarding family-aware 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `e57348f`


## Changed Files

- `scripts/test-local-distribution.sh`
- `welcome.qml`

## Commit Message

```
feat(welcome): make iRiS onboarding family-aware
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### docs(readme): add safe iRiS screenshots 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `e9f4f6d`


## Changed Files

- `README.md`
- `docs/images/iris-2.31-card.webp`
- `docs/images/iris-2.31-desktop.webp`
- `docs/images/iris-2.31-dock.webp`
- `docs/images/iris-2.31-principal.webp`

## Commit Message

```
docs(readme): add safe iRiS screenshots
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### chore(release): prepare 2.31.0 

**Date:** 19/09/26 | **Author:** snowarch | **Commit:** `f277837`


## Changed Files

- `CHANGELOG.md`
- `sdata/dist-arch/install-deps.sh`

## Commit Message

```
chore(release): prepare 2.31.0
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### Merge pull request #3 from omsenjalia/arena/01a0c1cc-inir 

**Date:** 21/09/26 | **Author:** arena-ai-coding-agent[bot] | **Commit:** `66b7000`


## Changed Files

- `.gitignore`
- `ARCHITECTURE.md`
- `CHANGELOG.md`
- `FamilyTransitionOverlay.qml`
- `GlobalStates.qml`
- `Makefile`
- `README.md`
- `STRUCTURE.md`
- `ShellIrisPanels.qml`
- `VERSION`
- `assets/images/mascot/manifest.json`
- `assets/systemd/inir.service`
- `defaults/config.json`
- `defaults/niri/config.d/30-window-rules.kdl`
- `defaults/niri/config.d/50-startup.kdl`
- `defaults/niri/config.d/60-animations.kdl`
- `defaults/niri/config.d/70-binds.kdl`
- `defaults/niri/config.d/80-layer-rules.kdl`
- `defaults/widgets/IRIS-SDK.md`
- `defaults/widgets/WIDGET-SDK.md`
- `distro/arch/inir-meta/.SRCINFO`
- `distro/arch/inir-meta/PKGBUILD`
- `distro/arch/inir-shell-git/.SRCINFO`
- `distro/arch/inir-shell-git/PKGBUILD`
- `distro/arch/inir-shell-git/inir-shell-git.install`
- `distro/arch/inir-shell/.SRCINFO`
- `distro/arch/inir-shell/PKGBUILD`
- `docs/ARCHITECTURE_OVERVIEW.md`
- `docs/AUDIO_MEDIA.md`
- `docs/AUTOSTART.md`
- `docs/CALENDAR.md`
- `docs/COMPOSITORS.md`
- `docs/CONFIG_SYSTEM.md`
- `docs/EDITORIAL_STYLE.md`
- `docs/GLOBAL_ACTIONS.md`
- `docs/INSTALL.md`
- `docs/IPC.md`
- `docs/IRIS.md`
- `docs/JAPANESE_OCR.md`
- `docs/KEYBINDS.md`
- `docs/LIMITATIONS.md`
- `docs/MODULES.md`
- `docs/NIXOS.md`
- `docs/NOTIFICATIONS.md`
- `docs/OPTIMIZATION.md`
- `docs/ORGANIC_EDGE.md`
- `docs/PACKAGES.md`
- `docs/PANEL_FAMILIES.md`
- `docs/PROJECT_MAP.md`
- `docs/RUNTIME.md`
- `docs/SERVICES.md`
- `docs/SETUP.md`
- `docs/THEMING_ARCHITECTURE.md`
- `docs/THEMING_MODULES.md`
- `docs/THEMING_PRESETS.md`
- `docs/THEMING_TARGETS.md`
- `docs/VESKTOP.md`
- `docs/WALLPAPER.md`
- `docs/_Sidebar.md`
- `docs/images/iris-2.31-card.webp`
- `docs/images/iris-2.31-desktop.webp`
- `docs/images/iris-2.31-dock.webp`
- `docs/images/iris-2.31-principal.webp`
- `docs/index.md`
- `docs/readme/README.ar.md`
- `docs/readme/README.de.md`
- `docs/readme/README.es.md`
- `docs/readme/README.fr.md`
- `docs/readme/README.hi.md`
- `docs/readme/README.it.md`
- `docs/readme/README.ja.md`
- `docs/readme/README.ko.md`
- `docs/readme/README.pt.md`
- `docs/readme/README.ru.md`
- `docs/readme/README.zh.md`
- `dots/.config/darklyrc`
- `dots/.config/niri/config.kdl`
- `flake.nix`
- `modules/altSwitcher/AltSwitcher.qml`
- `modules/altSwitcher/AltSwitcherNoVisual.qml`
- `modules/background/Backdrop.qml`
- `modules/background/Background.qml`
- `modules/background/WebWallpaperHost.qml`
- `modules/background/desktopItems/DesktopItemDelegate.qml`
- `modules/background/widgets/AbstractBackgroundWidget.qml`
- `modules/background/widgets/CustomImageWidget.qml`
- `modules/background/widgets/DesktopEditToolbar.qml`
- `modules/background/widgets/DesktopWidgetShapes.qml`
- `modules/background/widgets/EditorialWidget.qml`
- `modules/background/widgets/OrganicEdgeConfig.js`
- `modules/background/widgets/OrganicEdgeWidget.qml`
- `modules/background/widgets/WidgetChoiceButton.qml`
- `modules/background/widgets/WidgetEditAction.qml`
- `modules/background/widgets/WidgetInputMask.qml`
- `modules/background/widgets/WidgetLibraryCard.qml`
- `modules/background/widgets/WidgetManagerPanel.qml`
- `modules/background/widgets/WidgetPlacementControls.qml`
- `modules/background/widgets/WidgetQuickControlsLayout.qml`
- `modules/background/widgets/WidgetShapePicker.qml`
- `modules/background/widgets/WidgetSurface.qml`
- `modules/background/widgets/battery/BatteryWidget.qml`
- `modules/background/widgets/calendar/CalendarUpcomingWidget.qml`
- `modules/background/widgets/calendar/MonthCalendarWidget.qml`
- `modules/background/widgets/calendar/qmldir`
- `modules/background/widgets/clock/ClockWidget.qml`
- `modules/background/widgets/clock/PixelClock.qml`
- `modules/background/widgets/clock/qmldir`
- `modules/background/widgets/controls/ControlsWidget.qml`
- `modules/background/widgets/controls/qmldir`
- `modules/background/widgets/dateBadge/DateBadgeWidget.qml`
- `modules/background/widgets/dateBadge/qmldir`
- `modules/background/widgets/dayProgress/DayProgressWidget.qml`
- `modules/background/widgets/dayProgress/qmldir`
- `modules/background/widgets/imageConverter/ImageConverterWidget.qml`
- `modules/background/widgets/instrument/InstrumentRing.qml`
- `modules/background/widgets/instrument/InstrumentScale.qml`
- `modules/background/widgets/instrument/qmldir`
- `modules/background/widgets/japaneseTypography/JapaneseTypographyWidget.qml`
- `modules/background/widgets/mascot/MascotWidget.qml`
- `modules/background/widgets/mediaControls/MediaControlsWidget.qml`
- `modules/background/widgets/newsTicker/NewsTickerWidget.qml`
- `modules/background/widgets/notes/NotesWidget.qml`
- `modules/background/widgets/qmldir`
- `modules/background/widgets/screenTime/ScreenTimeWidget.qml`
- `modules/background/widgets/screenTime/qmldir`
- `modules/background/widgets/shape/ShapeWidget.qml`
- `modules/background/widgets/shape/qmldir`
- `modules/background/widgets/systemMonitor/SystemMonitorWidget.qml`
- `modules/background/widgets/timers/TimerWidget.qml`
- `modules/background/widgets/timers/qmldir`
- `modules/background/widgets/todo/TodoWidget.qml`
- `modules/background/widgets/todo/qmldir`
- `modules/background/widgets/uptime/UptimeWidget.qml`
- `modules/background/widgets/userCard/UserCardWidget.qml`
- `modules/background/widgets/visualizer/VisualizerWidget.qml`
- `modules/background/widgets/weather/WeatherWidget.qml`
- `modules/background/widgets/worldClock/WorldClockWidget.qml`
- `modules/bar/Bar.qml`
- `modules/bar/BarContent.qml`
- `modules/bar/BarGroup.qml`
- `modules/bar/BarTaskbar.qml`
- `modules/bar/ClockWidget.qml`
- `modules/bar/Resources.qml`
- `modules/bar/ResourcesPopup.qml`
- `modules/bar/ShellUpdateIndicator.qml`
- `modules/bar/StyledPopup.qml`
- `modules/bar/SysTrayMenu.qml`
- `modules/bar/Workspaces.qml`
- `modules/barM3/BarContent.qml`
- `modules/barM3/BarGroup.qml`
- `modules/barM3/ClockWidget.qml`
- `modules/barM3/DocktoPanel.qml`
- `modules/barM3/LeftSidebarButton.qml`
- `modules/barM3/M3Bar.qml`
- `modules/barM3/Media.qml`
- `modules/barM3/Resources.qml`
- `modules/barM3/ResourcesPopup.qml`
- `modules/barM3/RightSidebarButton.qml`
- `modules/barM3/SysTrayMenu.qml`
- `modules/barM3/Workspaces.qml`
- `modules/barM3/qmldir`
- `modules/bootGreeting/BootGreeting.qml`
- `modules/cheatsheet/Cheatsheet.qml`
- `modules/cheatsheet/CheatsheetKeybinds.qml`
- `modules/cheatsheet/CheatsheetNoResults.qml`
- `modules/clipboard/ClipboardItem.qml`
- `modules/clipboard/ClipboardPanel.qml`
- `modules/closeConfirm/CloseConfirm.qml`
- `modules/closeConfirm/CloseConfirmContent.qml`
- `modules/common/Appearance.qml`
- `modules/common/Config.qml`
- `modules/common/Directories.qml`
- `modules/common/MascotCatalog.qml`
- `modules/common/Persistent.qml`
- `modules/common/functions/ShellExec.qml`
- `modules/common/functions/levendist.js`
- `modules/common/models/quickToggles/BluetoothToggle.qml`
- `modules/common/models/quickToggles/NetworkToggle.qml`
- `modules/common/widgets/AudioVisualizerLayer.qml`
- `modules/common/widgets/BarModuleOrderEditor.qml`
- `modules/common/widgets/CavaProcess.qml`
- `modules/common/widgets/CircularProgress.qml`
- `modules/common/widgets/CollapsibleSection.qml`
- `modules/common/widgets/ConfigRow.qml`
- `modules/common/widgets/ConfigSelectionArray.qml`
- `modules/common/widgets/ConfigSpinBox.qml`
- `modules/common/widgets/ConfigSwitch.qml`
- `modules/common/widgets/ContentPage.qml`
- `modules/common/widgets/ContentSection.qml`
- `modules/common/widgets/ContentSubsectionLabel.qml`
- `modules/common/widgets/ContextMenu.qml`
- `modules/common/widgets/DialogButton.qml`
- `modules/common/widgets/EditorialPaperStack.qml`
- `modules/common/widgets/EditorialRule.qml`
- `modules/common/widgets/FilterChip.qml`
- `modules/common/widgets/FloatingActionButton.qml`
- `modules/common/widgets/GlassBackground.qml`
- `modules/common/widgets/GroupButton.qml`
- `modules/common/widgets/IconToolbarButton.qml`
- `modules/common/widgets/MaterialLoadingIndicator.qml`
- `modules/common/widgets/MaterialPlaceholderMessage.qml`
- `modules/common/widgets/MaterialSymbol.qml`
- `modules/common/widgets/MaterialTextArea.qml`
- `modules/common/widgets/MaterialTextField.qml`
- `modules/common/widgets/MenuButton.qml`
- `modules/common/widgets/NavigationRailButton.qml`
- `modules/common/widgets/NavigationRailExpandButton.qml`
- `modules/common/widgets/NotificationActionButton.qml`
- `modules/common/widgets/NotificationAppIcon.qml`
- `modules/common/widgets/NotificationGroup.qml`
- `modules/common/widgets/NotificationGroupExpandButton.qml`
- `modules/common/widgets/NotificationItem.qml`
- `modules/common/widgets/OrganicAudioBlob.frag`
- `modules/common/widgets/OrganicAudioBlob.frag.qsb`
- `modules/common/widgets/OrganicAudioBlob.qml`
- `modules/common/widgets/OrganicAudioMotion.qml`
- `modules/common/widgets/OrganicScreenEdge.frag`
- `modules/common/widgets/OrganicScreenEdge.frag.qsb`
- `modules/common/widgets/OrganicScreenEdge.qml`
- `modules/common/widgets/PagePlaceholder.qml`
- `modules/common/widgets/PanelSurface.qml`
- `modules/common/widgets/PopupToolTip.qml`
- `modules/common/widgets/ResourceCard.qml`
- `modules/common/widgets/ResourceUsageMonitor.qml`
- `modules/common/widgets/RicelinSurface.qml`
- `modules/common/widgets/RippleButton.qml`
- `modules/common/widgets/RippleButtonWithIcon.qml`
- `modules/common/widgets/SecondaryTabBar.qml`
- `modules/common/widgets/SecondaryTabButton.qml`
- `modules/common/widgets/SelectionGroupButton.qml`
- `modules/common/widgets/SettingsCardSection.qml`
- `modules/common/widgets/SettingsGroup.qml`
- `modules/common/widgets/SettingsMaterialPreset.qml`
- `modules/common/widgets/SettingsSearchRegistry.qml`
- `modules/common/widgets/SettingsSwitch.qml`
- `modules/common/widgets/SettingsTaskLoader.qml`
- `modules/common/widgets/SettingsTaskLoadingState.qml`
- `modules/common/widgets/SettingsTaskNavigator.qml`
- `modules/common/widgets/SmartAppIcon.qml`
- `modules/common/widgets/SoundPicker.qml`
- `modules/common/widgets/StyledComboBox.qml`
- `modules/common/widgets/StyledSlider.qml`
- `modules/common/widgets/StyledSpinBox.qml`
- `modules/common/widgets/StyledSwitch.qml`
- `modules/common/widgets/StyledText.qml`
- `modules/common/widgets/ThumbnailImage.qml`
- `modules/common/widgets/ToastNotification.qml`
- `modules/common/widgets/Toolbar.qml`
- `modules/common/widgets/ToolbarButton.qml`
- `modules/common/widgets/ToolbarTabBar.qml`
- `modules/common/widgets/ToolbarTabButton.qml`
- `modules/common/widgets/ToolbarTextField.qml`
- `modules/common/widgets/WallpaperCrossfader.qml`
- `modules/common/widgets/WindowDialog.qml`
- `modules/common/widgets/WindowDialogSectionHeader.qml`
- `modules/common/widgets/WindowDialogTitle.qml`
- `modules/common/widgets/qmldir`
- `modules/common/widgets/wallpaperTransitions/Doom.frag`
- `modules/common/widgets/wallpaperTransitions/Doom.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/Peel.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/circlePit.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/circleSelect.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/crt.frag`
- `modules/common/widgets/wallpaperTransitions/crt.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/dissolve.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/glitch.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/inirFracture.frag`
- `modules/common/widgets/wallpaperTransitions/inirFracture.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/inirInk.frag`
- `modules/common/widgets/wallpaperTransitions/inirInk.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/inirMelt.frag`
- `modules/common/widgets/wallpaperTransitions/inirMelt.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/inirPrism.frag`
- `modules/common/widgets/wallpaperTransitions/inirPrism.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/inirVeil.frag`
- `modules/common/widgets/wallpaperTransitions/inirVeil.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/magic.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/pixelate.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/ripple.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/shatter.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/stripes.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/transition.frag.qsb`
- `modules/common/widgets/widgetCanvas/AbstractWidget.qml`
- `modules/controlPanel/ControlPanelContent.qml`
- `modules/controlPanel/DateTimeHeader.qml`
- `modules/controlPanel/MediaSection.qml`
- `modules/controlPanel/SystemSection.qml`
- `modules/controlPanel/WeatherSection.qml`
- `modules/dashboard/DashAgenda.qml`
- `modules/dashboard/DashCalendar.qml`
- `modules/dashboard/DashCard.qml`
- `modules/dashboard/DashFocus.qml`
- `modules/dashboard/DashLayoutEditor.qml`
- `modules/dashboard/DashMedia.qml`
- `modules/dashboard/DashSystem.qml`
- `modules/dashboard/DashTodo.qml`
- `modules/dashboard/DashWeather.qml`
- `modules/dashboard/DashWelcome.qml`
- `modules/dashboard/Dashboard.qml`
- `modules/dashboard/DashboardContent.qml`
- `modules/dashboard/DashboardHeader.qml`
- `modules/dock/Dock.qml`
- `modules/dock/DockAppButton.qml`
- `modules/dock/DockApps.qml`
- `modules/dock/DockButton.qml`
- `modules/dock/DockContextMenu.qml`
- `modules/dock/DockMacBackground.qml`
- `modules/dock/DockPillItem.qml`
- `modules/dock/DockPreview.qml`
- `modules/dock/DockWindowPreview.qml`
- `modules/equalizer/EqualizerBandSlider.qml`
- `modules/equalizer/EqualizerContent.qml`
- `modules/equalizer/EqualizerPanel.qml`
- `modules/equalizer/EqualizerPresetButton.qml`
- `modules/equalizer/qmldir`
- `modules/ii/ShellIiPanelsImpl.qml`
- `modules/ii/critical/ShellIiCriticalPanels.qml`
- `modules/ii/overlay/OverlayBackground.qml`
- `modules/ii/overlay/OverlayContent.qml`
- `modules/ii/overlay/OverlayLook.qml`
- `modules/ii/overlay/OverlayPanel.qml`
- `modules/ii/overlay/OverlaySegments.qml`
- `modules/ii/overlay/OverlayTaskbar.qml`
- `modules/ii/overlay/StyledOverlayWidget.qml`
- `modules/ii/overlay/discord/Discord.qml`
- `modules/ii/overlay/floatingImage/FloatingImage.qml`
- `modules/ii/overlay/notes/NotesContent.qml`
- `modules/ii/overlay/notifications/Notifications.qml`
- `modules/ii/overlay/qmldir`
- `modules/ii/overlay/recorder/Recorder.qml`
- `modules/ii/overlay/resources/Resources.qml`
- `modules/ii/overlay/volumeMixer/VolumeMixer.qml`
- `modules/iris/ShellIrisPanelsImpl.qml`
- `modules/iris/background/IrisBackground.qml`
- `modules/iris/background/qmldir`
- `modules/iris/bar/IrisBar.qml`
- `modules/iris/bar/IrisCustomModule.qml`
- `modules/iris/bar/IrisIsland.qml`
- `modules/iris/bar/IrisTools.qml`
- `modules/iris/bar/IrisTray.qml`
- `modules/iris/bar/island/DateMark.qml`
- `modules/iris/bar/island/Glyph.qml`
- `modules/iris/bar/island/GlyphButton.qml`
- `modules/iris/bar/island/IslandActivityPage.qml`
- `modules/iris/bar/island/IslandBarZones.qml`
- `modules/iris/bar/island/IslandCompactColumn.qml`
- `modules/iris/bar/island/IslandDesktopPage.qml`
- `modules/iris/bar/island/IslandMediaPage.qml`
- `modules/iris/bar/island/IslandStackedClock.qml`
- `modules/iris/bar/island/Metric.qml`
- `modules/iris/bar/island/ProgressRing.qml`
- `modules/iris/bar/island/RecordDot.qml`
- `modules/iris/bar/island/StudioChip.qml`
- `modules/iris/bar/island/Tabular.qml`
- `modules/iris/bar/island/Waveform.qml`
- `modules/iris/bar/island/qmldir`
- `modules/iris/bar/qmldir`
- `modules/iris/closeConfirm/IrisCloseConfirmContent.qml`
- `modules/iris/closeConfirm/qmldir`
- `modules/iris/components/IrisArtwork.qml`
- `modules/iris/components/IrisBadge.qml`
- `modules/iris/components/IrisBluetoothList.qml`
- `modules/iris/components/IrisBubbleFace.qml`
- `modules/iris/components/IrisBubbleGrip.qml`
- `modules/iris/components/IrisButton.qml`
- `modules/iris/components/IrisCapsuleSlider.qml`
- `modules/iris/components/IrisClock.qml`
- `modules/iris/components/IrisDesktopMenu.qml`
- `modules/iris/components/IrisDeviceList.qml`
- `modules/iris/components/IrisField.qml`
- `modules/iris/components/IrisGlassPane.qml`
- `modules/iris/components/IrisIconButton.qml`
- `modules/iris/components/IrisLightWash.qml`
- `modules/iris/components/IrisMark.qml`
- `modules/iris/components/IrisMediaBackdrop.qml`
- `modules/iris/components/IrisMediaCard.qml`
- `modules/iris/components/IrisMorphSurface.qml`
- `modules/iris/components/IrisNetworkList.qml`
- `modules/iris/components/IrisNotificationIcon.qml`
- `modules/iris/components/IrisNumber.qml`
- `modules/iris/components/IrisOutputHold.qml`
- `modules/iris/components/IrisPlacePicker.qml`
- `modules/iris/components/IrisScrubber.qml`
- `modules/iris/components/IrisSlider.qml`
- `modules/iris/components/IrisSpring.qml`
- `modules/iris/components/IrisStudioMask.qml`
- `modules/iris/components/IrisSurface.qml`
- `modules/iris/components/IrisText.qml`
- `modules/iris/components/IrisWheelIntent.qml`
- `modules/iris/components/IrisWheelPicker.qml`
- `modules/iris/components/qmldir`
- `modules/iris/control/IrisControlCenter.qml`
- `modules/iris/control/IrisQuickPanel.qml`
- `modules/iris/control/qmldir`
- `modules/iris/critical/ShellIrisCriticalPanels.qml`
- `modules/iris/dock/IrisDock.qml`
- `modules/iris/dock/qmldir`
- `modules/iris/edit/IrisEditBar.qml`
- `modules/iris/edit/qmldir`
- `modules/iris/field/IrisField.frag`
- `modules/iris/field/IrisField.frag.qsb`
- `modules/iris/field/IrisField.qml`
- `modules/iris/field/IrisGlassSource.qml`
- `modules/iris/field/qmldir`
- `modules/iris/frame/IrisFrame.qml`
- `modules/iris/frame/IrisFramePulse.qml`
- `modules/iris/frame/IrisReservations.qml`
- `modules/iris/frame/qmldir`
- `modules/iris/lock/IrisLockSurface.qml`
- `modules/iris/lock/qmldir`
- `modules/iris/notificationPopup/IrisBanners.qml`
- `modules/iris/notificationPopup/IrisNotificationPopup.qml`
- `modules/iris/notificationPopup/qmldir`
- `modules/iris/onScreenDisplay/IrisOSD.qml`
- `modules/iris/onScreenDisplay/qmldir`
- `modules/iris/palette/IrisPalette.qml`
- `modules/iris/palette/qmldir`
- `modules/iris/pieces/IrisPieces.qml`
- `modules/iris/pieces/qmldir`
- `modules/iris/polkit/IrisPolkit.qml`
- `modules/iris/polkit/IrisPolkitContent.qml`
- `modules/iris/polkit/qmldir`
- `modules/iris/preview/IrisGroupPreview.qml`
- `modules/iris/preview/IrisMotionLab.qml`
- `modules/iris/preview/IrisPreviewStage.qml`
- `modules/iris/preview/IrisScreenPreview.qml`
- `modules/iris/preview/IrisTargetPreview.qml`
- `modules/iris/preview/qmldir`
- `modules/iris/regionSelector/IrisOptionsToolbar.qml`
- `modules/iris/regionSelector/qmldir`
- `modules/iris/session/IrisSessionScreen.qml`
- `modules/iris/session/qmldir`
- `modules/iris/settings/IrisOptions.qml`
- `modules/iris/settings/IrisSetting.qml`
- `modules/iris/settings/IrisSettings.qml`
- `modules/iris/settings/IrisThemes.qml`
- `modules/iris/settings/qmldir`
- `modules/iris/sidebar/IrisSidebar.qml`
- `modules/iris/sidebar/IrisSidebarEdge.qml`
- `modules/iris/sidebar/IrisSidebarEditor.qml`
- `modules/iris/sidebar/IrisSidebarSection.qml`
- `modules/iris/sidebar/qmldir`
- `modules/iris/stage/IrisCardContent.qml`
- `modules/iris/stage/IrisStage.qml`
- `modules/iris/stage/qmldir`
- `modules/iris/studio/IrisStudio.qml`
- `modules/iris/studio/qmldir`
- `modules/iris/style/IrisMood.qml`
- `modules/iris/style/IrisStyle.qml`
- `modules/iris/style/qmldir`
- `modules/iris/wallpaper/IrisWallpaperPicker.qml`
- `modules/iris/wallpaper/WallpaperDiscovery.qml`
- `modules/iris/wallpaper/WallpaperEmpty.qml`
- `modules/iris/wallpaper/WallpaperFolders.qml`
- `modules/iris/wallpaper/WallpaperShowcase.qml`
- `modules/iris/wallpaper/WallpaperTile.qml`
- `modules/iris/wallpaper/qmldir`
- `modules/iris/widgets/FaceAction.qml`
- `modules/iris/widgets/FaceAvatar.qml`
- `modules/iris/widgets/FaceChoice.qml`
- `modules/iris/widgets/FaceDial.qml`
- `modules/iris/widgets/FaceFigure.qml`
- `modules/iris/widgets/FaceHeader.qml`
- `modules/iris/widgets/FaceText.qml`
- `modules/iris/widgets/IrisAgendaFace.qml`
- `modules/iris/widgets/IrisBatteryFace.qml`
- `modules/iris/widgets/IrisCalendarFace.qml`
- `modules/iris/widgets/IrisClockFace.qml`
- `modules/iris/widgets/IrisControlsFace.qml`
- `modules/iris/widgets/IrisDateFace.qml`
- `modules/iris/widgets/IrisDayFace.qml`
- `modules/iris/widgets/IrisFaceData.qml`
- `modules/iris/widgets/IrisNewsFace.qml`
- `modules/iris/widgets/IrisNotesFace.qml`
- `modules/iris/widgets/IrisNowPlayingFace.qml`
- `modules/iris/widgets/IrisProfileFace.qml`
- `modules/iris/widgets/IrisScreenTimeFace.qml`
- `modules/iris/widgets/IrisSizeGrip.qml`
- `modules/iris/widgets/IrisTimerFace.qml`
- `modules/iris/widgets/IrisTodoFace.qml`
- `modules/iris/widgets/IrisUptimeFace.qml`
- `modules/iris/widgets/IrisVitalsFace.qml`
- `modules/iris/widgets/IrisWeatherFace.qml`
- `modules/iris/widgets/IrisWidgetControls.qml`
- `modules/iris/widgets/IrisWidgetFace.qml`
- `modules/iris/widgets/IrisWidgetGallery.qml`
- `modules/iris/widgets/IrisWorldClockFace.qml`
- `modules/iris/widgets/qmldir`
- `modules/japaneseLookup/JapaneseLookup.qml`
- `modules/japaneseLookup/qmldir`
- `modules/lock/Lock.qml`
- `modules/lock/LockMediaWidget.qml`
- `modules/lock/LockSurface.qml`
- `modules/mascot/MascotCompanion.qml`
- `modules/mascot/MascotRomp.qml`
- `modules/mediaControls/BarMediaPlayerItem.qml`
- `modules/mediaControls/MediaControls.qml`
- `modules/mediaControls/PlayerControl.qml`
- `modules/mediaControls/components/MediaOrganicEdgeAura.qml`
- `modules/mediaControls/components/MediaVisualizerOverlay.qml`
- `modules/mediaControls/components/PlayerInfo.qml`
- `modules/mediaControls/components/PlayerProgress.qml`
- `modules/mediaControls/components/qmldir`
- `modules/mediaControls/presets/AlbumArtPlayer.qml`
- `modules/mediaControls/presets/ClassicPlayer.qml`
- `modules/mediaControls/presets/CompactPlayer.qml`
- `modules/mediaControls/presets/ExpandingLyricsPlayer.qml`
- `modules/mediaControls/presets/FullPlayer.qml`
- `modules/mediaControls/presets/LyricsPlayer.qml`
- `modules/mediaControls/presets/LyricsSplitPlayer.qml`
- `modules/mediaControls/presets/MinimalPlayer.qml`
- `modules/mediaControls/presets/VisualizerPlayer.qml`
- `modules/onScreenDisplay/OnScreenDisplay.qml`
- `modules/onScreenDisplay/OsdValueIndicator.qml`
- `modules/onScreenDisplay/indicators/KeyboardLayoutIndicator.qml`
- `modules/onScreenDisplay/indicators/VoiceSearchIndicator.qml`
- `modules/overview/ActionModeView.qml`
- `modules/overview/OrbitFocusLens.qml`
- `modules/overview/OrbitOrbitalStage.qml`
- `modules/overview/OrbitPocket.qml`
- `modules/overview/OrbitShelf.qml`
- `modules/overview/OrbitStudio.qml`
- `modules/overview/OrbitStudioWorkspace.qml`
- `modules/overview/OrbitTuning.qml`
- `modules/overview/Overview.qml`
- `modules/overview/OverviewAllAppsGrid.qml`
- `modules/overview/OverviewDashboard.qml`
- `modules/overview/OverviewNiriWidget.qml`
- `modules/overview/SearchBar.qml`
- `modules/overview/SearchItem.qml`
- `modules/overview/SearchWidget.qml`
- `modules/overview/qmldir`
- `modules/pill/MusicBars.qml`
- `modules/pill/Pill.qml`
- `modules/pill/PillBar.qml`
- `modules/pill/PillMixer.qml`
- `modules/pill/PillNotifs.qml`
- `modules/pill/PillRecorder.qml`
- `modules/pill/PillSpectrumWings.qml`
- `modules/pill/PillSysmon.qml`
- `modules/pill/PillTheme.qml`
- `modules/polkit/PolkitContent.qml`
- `modules/recordingOsd/RecordingOsd.qml`
- `modules/regionSelector/AnnotationEditor.qml`
- `modules/regionSelector/OptionsToolbar.qml`
- `modules/regionSelector/RegionSelection.qml`
- `modules/screenCorners/ScreenCorners.qml`
- `modules/sessionScreen/SessionActionButton.qml`
- `modules/sessionScreen/SessionScreen.qml`
- `modules/settings/AdvancedConfig.qml`
- `modules/settings/AiConfig.qml`
- `modules/settings/AutostartConfig.qml`
- `modules/settings/BackgroundConfig.qml`
- `modules/settings/BarConfig.qml`
- `modules/settings/CheatsheetConfig.qml`
- `modules/settings/ColorPickerRow.qml`
- `modules/settings/DashboardConfig.qml`
- `modules/settings/DesktopWidgetsConfig.qml`
- `modules/settings/DockConfig.qml`
- `modules/settings/EditorialStyleEditor.qml`
- `modules/settings/EffectsConfig.qml`
- `modules/settings/GeneralConfig.qml`
- `modules/settings/GowallWallpaperEditor.qml`
- `modules/settings/InterfaceConfig.qml`
- `modules/settings/IrisConfig.qml`
- `modules/settings/M3LayoutSection.qml`
- `modules/settings/MascotConfig.qml`
- `modules/settings/ModulesConfig.qml`
- `modules/settings/MonitorVisibilityConfig.qml`
- `modules/settings/NiriConfig.qml`
- `modules/settings/OrbitConfig.qml`
- `modules/settings/OrbitShelfEditor.qml`
- `modules/settings/OrganicEdgeSettings.qml`
- `modules/settings/QuickConfig.qml`
- `modules/settings/RicelinConfig.qml`
- `modules/settings/ServicesConfig.qml`
- `modules/settings/SettingsEditorial.qml`
- `modules/settings/SettingsFocus.qml`
- `modules/settings/SettingsOverlay.qml`
- `modules/settings/SettingsPageHost.qml`
- `modules/settings/SettingsPageRegistry.qml`
- `modules/settings/SidebarsConfig.qml`
- `modules/settings/ThemesConfig.qml`
- `modules/settings/ToolsConfig.qml`
- `modules/settings/WaffleConfig.qml`
- `modules/settings/WorkspaceStripConfig.qml`
- `modules/settings/qmldir`
- `modules/settings/settings-search-index.generated.json`
- `modules/shellUpdate/ShellUpdateOverlay.qml`
- `modules/sidebar/SidebarHost.qml`
- `modules/sidebarLeft/AiChat.qml`
- `modules/sidebarLeft/Anime.qml`
- `modules/sidebarLeft/ApiCommandButton.qml`
- `modules/sidebarLeft/ApiInputBoxIndicator.qml`
- `modules/sidebarLeft/ScrollToBottomButton.qml`
- `modules/sidebarLeft/SidebarLeftContent.qml`
- `modules/sidebarLeft/SoftwareView.qml`
- `modules/sidebarLeft/ToolsView.qml`
- `modules/sidebarLeft/Wallhaven.qml`
- `modules/sidebarLeft/WallhavenView.qml`
- `modules/sidebarLeft/YtMusicView.qml`
- `modules/sidebarLeft/aiChat/AiMessage.qml`
- `modules/sidebarLeft/aiChat/AiMessageControlButton.qml`
- `modules/sidebarLeft/aiChat/AiModelSelector.qml`
- `modules/sidebarLeft/aiChat/AnnotationSourceButton.qml`
- `modules/sidebarLeft/aiChat/AttachedFileIndicator.qml`
- `modules/sidebarLeft/aiChat/ChatHistoryPanel.qml`
- `modules/sidebarLeft/aiChat/MessageCodeBlock.qml`
- `modules/sidebarLeft/aiChat/MessageThinkBlock.qml`
- `modules/sidebarLeft/aiChat/SearchQueryButton.qml`
- `modules/sidebarLeft/animeSchedule/AnimeCard.qml`
- `modules/sidebarLeft/animeSchedule/AnimeScheduleView.qml`
- `modules/sidebarLeft/innertune/ITAccountScreen.qml`
- `modules/sidebarLeft/innertune/ITLibraryScreen.qml`
- `modules/sidebarLeft/innertune/ITLyrics.qml`
- `modules/sidebarLeft/innertune/ITNavigationBar.qml`
- `modules/sidebarLeft/innertune/ITNavigationTitle.qml`
- `modules/sidebarLeft/innertune/ITPlayer.qml`
- `modules/sidebarLeft/innertune/ITQueue.qml`
- `modules/sidebarLeft/innertune/InnerTuneHome.qml`
- `modules/sidebarLeft/innertune/InnerTuneSearch.qml`
- `modules/sidebarLeft/innertune/InnerTuneView.qml`
- `modules/sidebarLeft/news/NewsView.qml`
- `modules/sidebarLeft/plugins/PluginsTab.qml`
- `modules/sidebarLeft/plugins/WebAppView.qml`
- `modules/sidebarLeft/translator/LanguageSelectorButton.qml`
- `modules/sidebarLeft/widgets/ContextCard.qml`
- `modules/sidebarLeft/widgets/ControlsCard.qml`
- `modules/sidebarLeft/widgets/CryptoWidget.qml`
- `modules/sidebarLeft/widgets/DraggableWidgetContainer.qml`
- `modules/sidebarLeft/widgets/GlanceHeader.qml`
- `modules/sidebarLeft/widgets/MediaPlayerWidget.qml`
- `modules/sidebarLeft/widgets/QuickLaunch.qml`
- `modules/sidebarLeft/widgets/QuickNote.qml`
- `modules/sidebarLeft/widgets/QuickWallpaper.qml`
- `modules/sidebarLeft/widgets/StatusRings.qml`
- `modules/sidebarLeft/widgets/WorldClockWidget.qml`
- `modules/sidebarLeft/widgets/YtMusicPlayerCard.qml`
- `modules/sidebarLeft/widgets/YtMusicTrackItem.qml`
- `modules/sidebarRight/BottomWidgetGroup.qml`
- `modules/sidebarRight/CenterWidgetGroup.qml`
- `modules/sidebarRight/CompactMediaPlayer.qml`
- `modules/sidebarRight/CompactSidebarRightContent.qml`
- `modules/sidebarRight/QuickSliders.qml`
- `modules/sidebarRight/SectionDivider.qml`
- `modules/sidebarRight/SidebarProfileHeader.qml`
- `modules/sidebarRight/SidebarRightContent.qml`
- `modules/sidebarRight/bluetoothDevices/BluetoothDeviceItem.qml`
- `modules/sidebarRight/calculator/CalculatorWidget.qml`
- `modules/sidebarRight/calendar/CalendarDayButton.qml`
- `modules/sidebarRight/calendar/CalendarDayDetail.qml`
- `modules/sidebarRight/calendar/CalendarEventRow.qml`
- `modules/sidebarRight/calendar/CalendarHeaderButton.qml`
- `modules/sidebarRight/calendar/CalendarWidget.qml`
- `modules/sidebarRight/events/EventCard.qml`
- `modules/sidebarRight/events/EventsWidget.qml`
- `modules/sidebarRight/notepad/NotepadWidget.qml`
- `modules/sidebarRight/notifications/NotificationList.qml`
- `modules/sidebarRight/notifications/NotificationStatusButton.qml`
- `modules/sidebarRight/pomodoro/CountdownTimer.qml`
- `modules/sidebarRight/pomodoro/PomodoroTimer.qml`
- `modules/sidebarRight/pomodoro/Stopwatch.qml`
- `modules/sidebarRight/quickToggles/AbstractQuickPanel.qml`
- `modules/sidebarRight/quickToggles/androidStyle/AndroidNetworkToggle.qml`
- `modules/sidebarRight/quickToggles/androidStyle/AndroidQuickToggleButton.qml`
- `modules/sidebarRight/quickToggles/classicStyle/NetworkToggle.qml`
- `modules/sidebarRight/quickToggles/classicStyle/QuickToggleButton.qml`
- `modules/sidebarRight/screenTime/ScreenTimeWidget.qml`
- `modules/sidebarRight/sysmon/SysMonWidget.qml`
- `modules/sidebarRight/todo/TaskList.qml`
- `modules/sidebarRight/todo/TodoWidget.qml`
- `modules/sidebarRight/volumeMixer/AudioDeviceSelectorButton.qml`
- `modules/sidebarRight/volumeMixer/VolumeDialogContent.qml`
- `modules/sidebarRight/volumeMixer/VolumeMixerEntry.qml`
- `modules/sidebarRight/weather/WeatherDetailWidget.qml`
- `modules/sidebarRight/wifiNetworks/WifiDialog.qml`
- `modules/sidebarRight/wifiNetworks/WifiNetworkItem.qml`
- `modules/verticalBar/Resources.qml`
- `modules/verticalBar/VerticalBar.qml`
- `modules/verticalBar/VerticalBarContent.qml`
- `modules/verticalBar/VerticalClockWidget.qml`
- `modules/waffle/actionCenter/MediaPaneContent.qml`
- `modules/waffle/actionCenter/wifi/WWifiNetworkItem.qml`
- `modules/waffle/backdrop/WaffleBackdrop.qml`
- `modules/waffle/background/WaffleBackground.qml`
- `modules/waffle/bar/WaffleBar.qml`
- `modules/waffle/lock/WaffleLockSurface.qml`
- `modules/waffle/lock/WaffleLockSurfaceSafe.qml`
- `modules/waffle/looks/Looks.qml`
- `modules/waffle/onScreenDisplay/WaffleOSD.qml`
- `modules/waffle/settings/WSettingsContent.qml`
- `modules/waffle/settings/WSettingsTextField.qml`
- `modules/waffle/settings/pages/WAboutPage.qml`
- `modules/waffle/settings/pages/WBackgroundPage.qml`
- `modules/waffle/settings/pages/WGeneralPage.qml`
- `modules/waffle/settings/pages/WInterfacePage.qml`
- `modules/waffle/settings/pages/WMascotPage.qml`
- `modules/waffle/settings/pages/WModulesPage.qml`
- `modules/waffle/settings/pages/WThemesPage.qml`
- `modules/waffle/widgets/WidgetsContent.qml`
- `modules/wallpaperLauncher/WallpaperLauncherContent.qml`
- `modules/wallpaperSelector/WallpaperCoverflowGallery.qml`
- `modules/wallpaperSelector/WallpaperCoverflowView.qml`
- `modules/wallpaperSelector/WallpaperSelectorContent.qml`
- `modules/wallpaperSelector/WallpaperSelectorRouter.qml`
- `modules/wallpaperSelector/WallpaperSkewView.qml`
- `modules/workspaceStrip/WorkspaceStripDragProxy.qml`
- `nix/home-module.nix`
- `nix/mascot-pack.nix`
- `nix/mascot-package.nix`
- `nix/module-common.nix`
- `nix/nixos-module.nix`
- `nix/package.nix`
- `nix/runtime-source-filter.nix`
- `scripts/accounts/set-avatar.sh`
- `scripts/audio/easyeffects-eq.sh`
- `scripts/capture-windows.sh`
- `scripts/cava/generate_config.sh`
- `scripts/cava/resolve_audio_source.py`
- `scripts/clipboard-copy.sh`
- `scripts/clipboard-image-store.sh`
- `scripts/colors/apply-gtk-theme.sh`
- `scripts/colors/modules/30-editors.sh`
- `scripts/colors/neovim_themegen.sh`
- `scripts/colors/system24_palette.py`
- `scripts/colors/targets/editors.json`
- `scripts/completions/inir.fish`
- `scripts/completions/inir.zsh`
- `scripts/detect_sensors.py`
- `scripts/generate-settings-search-index.py`
- `scripts/images/least_busy_region.py`
- `scripts/inir`
- `scripts/innertube-runtime.sh`
- `scripts/innertube.py`
- `scripts/install-japanese-dictionary.sh`
- `scripts/japanese-dictionary.py`
- `scripts/lib/ipc-registry.sh`
- `scripts/lib/niri-session-env.sh`
- `scripts/lyrics/lyrics.py`
- `scripts/musicRecognition/recognize-music.sh`
- `scripts/niri-config.py`
- `scripts/ocr-runner.sh`
- `scripts/orbit-visual-audit.sh`
- `scripts/quickshell-env.sh`
- `scripts/release.sh`
- `scripts/sddm/install-pixel-sddm.sh`
- `scripts/study-decks.py`
- `scripts/test-brightness-policy.js`
- `scripts/test-detect-sensors.py`
- `scripts/test-idle-policy.js`
- `scripts/test-iris-defaults.py`
- `scripts/test-iris-performance-contract.py`
- `scripts/test-iris-style-tokens.py`
- `scripts/test-local-distribution.sh`
- `scripts/test-lock-wake-policy.js`
- `scripts/test-runtime-payload.py`
- `scripts/translate-ocr.sh`
- `scripts/verify-docs.sh`
- `scripts/videos/record.sh`
- `scripts/wiki-sync.sh`
- `scripts/yt-dlp-runtime.sh`
- `scripts/ytmusic_auth.py`
- `sdata/dist-arch/inir-audio/PKGBUILD`
- `sdata/dist-arch/inir-deps/PKGBUILD`
- `sdata/dist-arch/inir-fonts/PKGBUILD`
- `sdata/dist-arch/inir-screencapture/PKGBUILD`
- `sdata/dist-arch/inir-toolkit/PKGBUILD`
- `sdata/dist-arch/install-deps.sh`
- `sdata/dist-debian/install-deps.sh`
- `sdata/dist-fedora/install-deps.sh`
- `sdata/lib/deps-map.sh`
- `sdata/lib/dist-determine.sh`
- `sdata/lib/doctor.sh`
- `sdata/lib/extras.sh`
- `sdata/lib/functions.sh`
- `sdata/lib/migrations.sh`
- `sdata/lib/package-installers.sh`
- `sdata/lib/robust-update.sh`
- `sdata/lib/runtime-payload.py`
- `sdata/lib/snapshots.sh`
- `sdata/lib/tui.sh`
- `sdata/lib/uninstall.sh`
- `sdata/migrations/034-cliphist-text-watcher.sh`
- `sdata/migrations/037-remembered-super-shift-s.sh`
- `sdata/migrations/038-cliphist-preview-filter.sh`
- `sdata/migrations/039-sddm-preserve-greeter-backend.sh`
- `sdata/migrations/040-niri-session-environment-lifecycle.sh`
- `sdata/migrations/041-visualizer-app-filter-semantics.sh`
- `sdata/migrations/042-cliphist-no-synthetic-newline.sh`
- `sdata/runtime-exclusions.json`
- `sdata/subcmd-install/0.greeting.sh`
- `sdata/subcmd-install/3.files.sh`
- `sdata/uv/README.md`
- `sdata/uv/requirements.in`
- `sdata/uv/requirements.txt`
- `services/AppSearch.qml`
- `services/Audio.qml`
- `services/AwwwBackend.qml`
- `services/BluetoothStatus.qml`
- `services/Booru.qml`
- `services/Brightness.qml`
- `services/CustomWidgets.qml`
- `services/DevNavigation.qml`
- `services/GameMode.qml`
- `services/GlobalActions.qml`
- `services/Hyprsunset.qml`
- `services/Idle.qml`
- `services/JapaneseDictionary.qml`
- `services/LiveActivities.qml`
- `services/MascotChaos.qml`
- `services/MinimizedWindows.qml`
- `services/Network.qml`
- `services/NiriService.qml`
- `services/Notifications.qml`
- `services/RecorderStatus.qml`
- `services/ResourceUsage.qml`
- `services/ShellLayoutController.qml`
- `services/ShellUpdates.qml`
- `services/TaskbarApps.qml`
- `services/ThemeService.qml`
- `services/TimerService.qml`
- `services/Todo.qml`
- `services/Translation.qml`
- `services/Updates.qml`
- `services/Wallhaven.qml`
- `services/WallpaperListener.qml`
- `services/Wallpapers.qml`
- `services/Weather.qml`
- `services/WebWallpaper.qml`
- `services/WidgetPowerManager.qml`
- `services/WindowPreviewService.qml`
- `services/WorldClock.qml`
- `services/YtMusic.qml`
- `services/brightnessPolicy.js`
- `services/deferred/AnimeService.qml`
- `services/deferred/CavaService.qml`
- `services/deferred/Cliphist.qml`
- `services/deferred/EasyEffects.qml`
- `services/deferred/GowallService.qml`
- `services/deferred/InnerTube.qml`
- `services/idlePolicy.js`
- `services/network/WifiAccessPoint.qml`
- `services/qmldir`
- `settings.qml`
- `setup`
- `shell.qml`
- `translations/ar_SA.json`
- `translations/de_DE.json`
- `translations/en_US.json`
- `translations/es_AR.json`
- `translations/fr_FR.json`
- `translations/he_HE.json`
- `translations/hi_IN.json`
- `translations/it_IT.json`
- `translations/ja_JP.json`
- `translations/kl_GL.json`
- `translations/ko_KR.json`
- `translations/l10n/README.md`
- `translations/l10n/glossary.json`
- `translations/l10n/locale-guides.json`
- `translations/pt_BR.json`
- `translations/ru_RU.json`
- `translations/tools/README.md`
- `translations/tools/auto-translate.js`
- `translations/tools/l10n.py`
- `translations/tools/manage-translations.sh`
- `translations/tools/translation-cleaner.py`
- `translations/tools/translation-manager.py`
- `translations/tr_TR.json`
- `translations/uk_UA.json`
- `translations/vi_VN.json`
- `translations/zh_CN.json`
- `welcome.qml`

## Commit Message

```
Merge pull request #3 from omsenjalia/arena/01a0c1cc-inir

Merge upstream v2.31.0 (snowarch/iNiR): iRiS, wallpapers, OCR tools, equalizer + conflict resolutions
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

### Merge upstream/main v2.31.0 (9574fa42) into the omSenjalia fork 

**Date:** 21/09/26 | **Author:** omsenjalia | **Commit:** `cc87a7e`


## Changed Files

- `.gitignore`
- `ARCHITECTURE.md`
- `CHANGELOG.md`
- `FamilyTransitionOverlay.qml`
- `GlobalStates.qml`
- `Makefile`
- `README.md`
- `STRUCTURE.md`
- `ShellIrisPanels.qml`
- `VERSION`
- `assets/images/mascot/manifest.json`
- `assets/systemd/inir.service`
- `defaults/config.json`
- `defaults/niri/config.d/30-window-rules.kdl`
- `defaults/niri/config.d/50-startup.kdl`
- `defaults/niri/config.d/60-animations.kdl`
- `defaults/niri/config.d/70-binds.kdl`
- `defaults/niri/config.d/80-layer-rules.kdl`
- `defaults/widgets/IRIS-SDK.md`
- `defaults/widgets/WIDGET-SDK.md`
- `distro/arch/inir-meta/.SRCINFO`
- `distro/arch/inir-meta/PKGBUILD`
- `distro/arch/inir-shell-git/.SRCINFO`
- `distro/arch/inir-shell-git/PKGBUILD`
- `distro/arch/inir-shell-git/inir-shell-git.install`
- `distro/arch/inir-shell/.SRCINFO`
- `distro/arch/inir-shell/PKGBUILD`
- `docs/ARCHITECTURE_OVERVIEW.md`
- `docs/AUDIO_MEDIA.md`
- `docs/AUTOSTART.md`
- `docs/CALENDAR.md`
- `docs/COMPOSITORS.md`
- `docs/CONFIG_SYSTEM.md`
- `docs/EDITORIAL_STYLE.md`
- `docs/GLOBAL_ACTIONS.md`
- `docs/INSTALL.md`
- `docs/IPC.md`
- `docs/IRIS.md`
- `docs/JAPANESE_OCR.md`
- `docs/KEYBINDS.md`
- `docs/LIMITATIONS.md`
- `docs/MODULES.md`
- `docs/NIXOS.md`
- `docs/NOTIFICATIONS.md`
- `docs/OPTIMIZATION.md`
- `docs/ORGANIC_EDGE.md`
- `docs/PACKAGES.md`
- `docs/PANEL_FAMILIES.md`
- `docs/PROJECT_MAP.md`
- `docs/RUNTIME.md`
- `docs/SERVICES.md`
- `docs/SETUP.md`
- `docs/THEMING_ARCHITECTURE.md`
- `docs/THEMING_MODULES.md`
- `docs/THEMING_PRESETS.md`
- `docs/THEMING_TARGETS.md`
- `docs/VESKTOP.md`
- `docs/WALLPAPER.md`
- `docs/_Sidebar.md`
- `docs/images/iris-2.31-card.webp`
- `docs/images/iris-2.31-desktop.webp`
- `docs/images/iris-2.31-dock.webp`
- `docs/images/iris-2.31-principal.webp`
- `docs/index.md`
- `docs/readme/README.ar.md`
- `docs/readme/README.de.md`
- `docs/readme/README.es.md`
- `docs/readme/README.fr.md`
- `docs/readme/README.hi.md`
- `docs/readme/README.it.md`
- `docs/readme/README.ja.md`
- `docs/readme/README.ko.md`
- `docs/readme/README.pt.md`
- `docs/readme/README.ru.md`
- `docs/readme/README.zh.md`
- `dots/.config/darklyrc`
- `dots/.config/niri/config.kdl`
- `flake.nix`
- `modules/altSwitcher/AltSwitcher.qml`
- `modules/altSwitcher/AltSwitcherNoVisual.qml`
- `modules/background/Backdrop.qml`
- `modules/background/Background.qml`
- `modules/background/WebWallpaperHost.qml`
- `modules/background/desktopItems/DesktopItemDelegate.qml`
- `modules/background/widgets/AbstractBackgroundWidget.qml`
- `modules/background/widgets/CustomImageWidget.qml`
- `modules/background/widgets/DesktopEditToolbar.qml`
- `modules/background/widgets/DesktopWidgetShapes.qml`
- `modules/background/widgets/EditorialWidget.qml`
- `modules/background/widgets/OrganicEdgeConfig.js`
- `modules/background/widgets/OrganicEdgeWidget.qml`
- `modules/background/widgets/WidgetChoiceButton.qml`
- `modules/background/widgets/WidgetEditAction.qml`
- `modules/background/widgets/WidgetInputMask.qml`
- `modules/background/widgets/WidgetLibraryCard.qml`
- `modules/background/widgets/WidgetManagerPanel.qml`
- `modules/background/widgets/WidgetPlacementControls.qml`
- `modules/background/widgets/WidgetQuickControlsLayout.qml`
- `modules/background/widgets/WidgetShapePicker.qml`
- `modules/background/widgets/WidgetSurface.qml`
- `modules/background/widgets/battery/BatteryWidget.qml`
- `modules/background/widgets/calendar/CalendarUpcomingWidget.qml`
- `modules/background/widgets/calendar/MonthCalendarWidget.qml`
- `modules/background/widgets/calendar/qmldir`
- `modules/background/widgets/clock/ClockWidget.qml`
- `modules/background/widgets/clock/PixelClock.qml`
- `modules/background/widgets/clock/qmldir`
- `modules/background/widgets/controls/ControlsWidget.qml`
- `modules/background/widgets/controls/qmldir`
- `modules/background/widgets/dateBadge/DateBadgeWidget.qml`
- `modules/background/widgets/dateBadge/qmldir`
- `modules/background/widgets/dayProgress/DayProgressWidget.qml`
- `modules/background/widgets/dayProgress/qmldir`
- `modules/background/widgets/imageConverter/ImageConverterWidget.qml`
- `modules/background/widgets/instrument/InstrumentRing.qml`
- `modules/background/widgets/instrument/InstrumentScale.qml`
- `modules/background/widgets/instrument/qmldir`
- `modules/background/widgets/japaneseTypography/JapaneseTypographyWidget.qml`
- `modules/background/widgets/mascot/MascotWidget.qml`
- `modules/background/widgets/mediaControls/MediaControlsWidget.qml`
- `modules/background/widgets/newsTicker/NewsTickerWidget.qml`
- `modules/background/widgets/notes/NotesWidget.qml`
- `modules/background/widgets/qmldir`
- `modules/background/widgets/screenTime/ScreenTimeWidget.qml`
- `modules/background/widgets/screenTime/qmldir`
- `modules/background/widgets/shape/ShapeWidget.qml`
- `modules/background/widgets/shape/qmldir`
- `modules/background/widgets/systemMonitor/SystemMonitorWidget.qml`
- `modules/background/widgets/timers/TimerWidget.qml`
- `modules/background/widgets/timers/qmldir`
- `modules/background/widgets/todo/TodoWidget.qml`
- `modules/background/widgets/todo/qmldir`
- `modules/background/widgets/uptime/UptimeWidget.qml`
- `modules/background/widgets/userCard/UserCardWidget.qml`
- `modules/background/widgets/visualizer/VisualizerWidget.qml`
- `modules/background/widgets/weather/WeatherWidget.qml`
- `modules/background/widgets/worldClock/WorldClockWidget.qml`
- `modules/bar/Bar.qml`
- `modules/bar/BarContent.qml`
- `modules/bar/BarGroup.qml`
- `modules/bar/BarTaskbar.qml`
- `modules/bar/ClockWidget.qml`
- `modules/bar/Resources.qml`
- `modules/bar/ResourcesPopup.qml`
- `modules/bar/ShellUpdateIndicator.qml`
- `modules/bar/StyledPopup.qml`
- `modules/bar/SysTrayMenu.qml`
- `modules/bar/Workspaces.qml`
- `modules/barM3/BarContent.qml`
- `modules/barM3/BarGroup.qml`
- `modules/barM3/ClockWidget.qml`
- `modules/barM3/DocktoPanel.qml`
- `modules/barM3/LeftSidebarButton.qml`
- `modules/barM3/M3Bar.qml`
- `modules/barM3/Media.qml`
- `modules/barM3/Resources.qml`
- `modules/barM3/ResourcesPopup.qml`
- `modules/barM3/RightSidebarButton.qml`
- `modules/barM3/SysTrayMenu.qml`
- `modules/barM3/Workspaces.qml`
- `modules/barM3/qmldir`
- `modules/bootGreeting/BootGreeting.qml`
- `modules/cheatsheet/Cheatsheet.qml`
- `modules/cheatsheet/CheatsheetKeybinds.qml`
- `modules/cheatsheet/CheatsheetNoResults.qml`
- `modules/clipboard/ClipboardItem.qml`
- `modules/clipboard/ClipboardPanel.qml`
- `modules/closeConfirm/CloseConfirm.qml`
- `modules/closeConfirm/CloseConfirmContent.qml`
- `modules/common/Appearance.qml`
- `modules/common/Config.qml`
- `modules/common/Directories.qml`
- `modules/common/MascotCatalog.qml`
- `modules/common/Persistent.qml`
- `modules/common/functions/ShellExec.qml`
- `modules/common/functions/levendist.js`
- `modules/common/models/quickToggles/BluetoothToggle.qml`
- `modules/common/models/quickToggles/NetworkToggle.qml`
- `modules/common/widgets/AudioVisualizerLayer.qml`
- `modules/common/widgets/BarModuleOrderEditor.qml`
- `modules/common/widgets/CavaProcess.qml`
- `modules/common/widgets/CircularProgress.qml`
- `modules/common/widgets/CollapsibleSection.qml`
- `modules/common/widgets/ConfigRow.qml`
- `modules/common/widgets/ConfigSelectionArray.qml`
- `modules/common/widgets/ConfigSpinBox.qml`
- `modules/common/widgets/ConfigSwitch.qml`
- `modules/common/widgets/ContentPage.qml`
- `modules/common/widgets/ContentSection.qml`
- `modules/common/widgets/ContentSubsectionLabel.qml`
- `modules/common/widgets/ContextMenu.qml`
- `modules/common/widgets/DialogButton.qml`
- `modules/common/widgets/EditorialPaperStack.qml`
- `modules/common/widgets/EditorialRule.qml`
- `modules/common/widgets/FilterChip.qml`
- `modules/common/widgets/FloatingActionButton.qml`
- `modules/common/widgets/GlassBackground.qml`
- `modules/common/widgets/GroupButton.qml`
- `modules/common/widgets/IconToolbarButton.qml`
- `modules/common/widgets/MaterialLoadingIndicator.qml`
- `modules/common/widgets/MaterialPlaceholderMessage.qml`
- `modules/common/widgets/MaterialSymbol.qml`
- `modules/common/widgets/MaterialTextArea.qml`
- `modules/common/widgets/MaterialTextField.qml`
- `modules/common/widgets/MenuButton.qml`
- `modules/common/widgets/NavigationRailButton.qml`
- `modules/common/widgets/NavigationRailExpandButton.qml`
- `modules/common/widgets/NotificationActionButton.qml`
- `modules/common/widgets/NotificationAppIcon.qml`
- `modules/common/widgets/NotificationGroup.qml`
- `modules/common/widgets/NotificationGroupExpandButton.qml`
- `modules/common/widgets/NotificationItem.qml`
- `modules/common/widgets/OrganicAudioBlob.frag`
- `modules/common/widgets/OrganicAudioBlob.frag.qsb`
- `modules/common/widgets/OrganicAudioBlob.qml`
- `modules/common/widgets/OrganicAudioMotion.qml`
- `modules/common/widgets/OrganicScreenEdge.frag`
- `modules/common/widgets/OrganicScreenEdge.frag.qsb`
- `modules/common/widgets/OrganicScreenEdge.qml`
- `modules/common/widgets/PagePlaceholder.qml`
- `modules/common/widgets/PanelSurface.qml`
- `modules/common/widgets/PopupToolTip.qml`
- `modules/common/widgets/ResourceCard.qml`
- `modules/common/widgets/ResourceUsageMonitor.qml`
- `modules/common/widgets/RicelinSurface.qml`
- `modules/common/widgets/RippleButton.qml`
- `modules/common/widgets/RippleButtonWithIcon.qml`
- `modules/common/widgets/SecondaryTabBar.qml`
- `modules/common/widgets/SecondaryTabButton.qml`
- `modules/common/widgets/SelectionGroupButton.qml`
- `modules/common/widgets/SettingsCardSection.qml`
- `modules/common/widgets/SettingsGroup.qml`
- `modules/common/widgets/SettingsMaterialPreset.qml`
- `modules/common/widgets/SettingsSearchRegistry.qml`
- `modules/common/widgets/SettingsSwitch.qml`
- `modules/common/widgets/SettingsTaskLoader.qml`
- `modules/common/widgets/SettingsTaskLoadingState.qml`
- `modules/common/widgets/SettingsTaskNavigator.qml`
- `modules/common/widgets/SmartAppIcon.qml`
- `modules/common/widgets/SoundPicker.qml`
- `modules/common/widgets/StyledComboBox.qml`
- `modules/common/widgets/StyledSlider.qml`
- `modules/common/widgets/StyledSpinBox.qml`
- `modules/common/widgets/StyledSwitch.qml`
- `modules/common/widgets/StyledText.qml`
- `modules/common/widgets/ThumbnailImage.qml`
- `modules/common/widgets/ToastNotification.qml`
- `modules/common/widgets/Toolbar.qml`
- `modules/common/widgets/ToolbarButton.qml`
- `modules/common/widgets/ToolbarTabBar.qml`
- `modules/common/widgets/ToolbarTabButton.qml`
- `modules/common/widgets/ToolbarTextField.qml`
- `modules/common/widgets/WallpaperCrossfader.qml`
- `modules/common/widgets/WindowDialog.qml`
- `modules/common/widgets/WindowDialogSectionHeader.qml`
- `modules/common/widgets/WindowDialogTitle.qml`
- `modules/common/widgets/qmldir`
- `modules/common/widgets/wallpaperTransitions/Doom.frag`
- `modules/common/widgets/wallpaperTransitions/Doom.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/Peel.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/circlePit.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/circleSelect.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/crt.frag`
- `modules/common/widgets/wallpaperTransitions/crt.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/dissolve.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/glitch.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/inirFracture.frag`
- `modules/common/widgets/wallpaperTransitions/inirFracture.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/inirInk.frag`
- `modules/common/widgets/wallpaperTransitions/inirInk.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/inirMelt.frag`
- `modules/common/widgets/wallpaperTransitions/inirMelt.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/inirPrism.frag`
- `modules/common/widgets/wallpaperTransitions/inirPrism.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/inirVeil.frag`
- `modules/common/widgets/wallpaperTransitions/inirVeil.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/magic.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/pixelate.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/ripple.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/shatter.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/stripes.frag.qsb`
- `modules/common/widgets/wallpaperTransitions/transition.frag.qsb`
- `modules/common/widgets/widgetCanvas/AbstractWidget.qml`
- `modules/controlPanel/ControlPanelContent.qml`
- `modules/controlPanel/DateTimeHeader.qml`
- `modules/controlPanel/MediaSection.qml`
- `modules/controlPanel/SystemSection.qml`
- `modules/controlPanel/WeatherSection.qml`
- `modules/dashboard/DashAgenda.qml`
- `modules/dashboard/DashCalendar.qml`
- `modules/dashboard/DashCard.qml`
- `modules/dashboard/DashFocus.qml`
- `modules/dashboard/DashLayoutEditor.qml`
- `modules/dashboard/DashMedia.qml`
- `modules/dashboard/DashSystem.qml`
- `modules/dashboard/DashTodo.qml`
- `modules/dashboard/DashWeather.qml`
- `modules/dashboard/DashWelcome.qml`
- `modules/dashboard/Dashboard.qml`
- `modules/dashboard/DashboardContent.qml`
- `modules/dashboard/DashboardHeader.qml`
- `modules/dock/Dock.qml`
- `modules/dock/DockAppButton.qml`
- `modules/dock/DockApps.qml`
- `modules/dock/DockButton.qml`
- `modules/dock/DockContextMenu.qml`
- `modules/dock/DockMacBackground.qml`
- `modules/dock/DockPillItem.qml`
- `modules/dock/DockPreview.qml`
- `modules/dock/DockWindowPreview.qml`
- `modules/equalizer/EqualizerBandSlider.qml`
- `modules/equalizer/EqualizerContent.qml`
- `modules/equalizer/EqualizerPanel.qml`
- `modules/equalizer/EqualizerPresetButton.qml`
- `modules/equalizer/qmldir`
- `modules/ii/ShellIiPanelsImpl.qml`
- `modules/ii/critical/ShellIiCriticalPanels.qml`
- `modules/ii/overlay/OverlayBackground.qml`
- `modules/ii/overlay/OverlayContent.qml`
- `modules/ii/overlay/OverlayLook.qml`
- `modules/ii/overlay/OverlayPanel.qml`
- `modules/ii/overlay/OverlaySegments.qml`
- `modules/ii/overlay/OverlayTaskbar.qml`
- `modules/ii/overlay/StyledOverlayWidget.qml`
- `modules/ii/overlay/discord/Discord.qml`
- `modules/ii/overlay/floatingImage/FloatingImage.qml`
- `modules/ii/overlay/notes/NotesContent.qml`
- `modules/ii/overlay/notifications/Notifications.qml`
- `modules/ii/overlay/qmldir`
- `modules/ii/overlay/recorder/Recorder.qml`
- `modules/ii/overlay/resources/Resources.qml`
- `modules/ii/overlay/volumeMixer/VolumeMixer.qml`
- `modules/iris/ShellIrisPanelsImpl.qml`
- `modules/iris/background/IrisBackground.qml`
- `modules/iris/background/qmldir`
- `modules/iris/bar/IrisBar.qml`
- `modules/iris/bar/IrisCustomModule.qml`
- `modules/iris/bar/IrisIsland.qml`
- `modules/iris/bar/IrisTools.qml`
- `modules/iris/bar/IrisTray.qml`
- `modules/iris/bar/island/DateMark.qml`
- `modules/iris/bar/island/Glyph.qml`
- `modules/iris/bar/island/GlyphButton.qml`
- `modules/iris/bar/island/IslandActivityPage.qml`
- `modules/iris/bar/island/IslandBarZones.qml`
- `modules/iris/bar/island/IslandCompactColumn.qml`
- `modules/iris/bar/island/IslandDesktopPage.qml`
- `modules/iris/bar/island/IslandMediaPage.qml`
- `modules/iris/bar/island/IslandStackedClock.qml`
- `modules/iris/bar/island/Metric.qml`
- `modules/iris/bar/island/ProgressRing.qml`
- `modules/iris/bar/island/RecordDot.qml`
- `modules/iris/bar/island/StudioChip.qml`
- `modules/iris/bar/island/Tabular.qml`
- `modules/iris/bar/island/Waveform.qml`
- `modules/iris/bar/island/qmldir`
- `modules/iris/bar/qmldir`
- `modules/iris/closeConfirm/IrisCloseConfirmContent.qml`
- `modules/iris/closeConfirm/qmldir`
- `modules/iris/components/IrisArtwork.qml`
- `modules/iris/components/IrisBadge.qml`
- `modules/iris/components/IrisBluetoothList.qml`
- `modules/iris/components/IrisBubbleFace.qml`
- `modules/iris/components/IrisBubbleGrip.qml`
- `modules/iris/components/IrisButton.qml`
- `modules/iris/components/IrisCapsuleSlider.qml`
- `modules/iris/components/IrisClock.qml`
- `modules/iris/components/IrisDesktopMenu.qml`
- `modules/iris/components/IrisDeviceList.qml`
- `modules/iris/components/IrisField.qml`
- `modules/iris/components/IrisGlassPane.qml`
- `modules/iris/components/IrisIconButton.qml`
- `modules/iris/components/IrisLightWash.qml`
- `modules/iris/components/IrisMark.qml`
- `modules/iris/components/IrisMediaBackdrop.qml`
- `modules/iris/components/IrisMediaCard.qml`
- `modules/iris/components/IrisMorphSurface.qml`
- `modules/iris/components/IrisNetworkList.qml`
- `modules/iris/components/IrisNotificationIcon.qml`
- `modules/iris/components/IrisNumber.qml`
- `modules/iris/components/IrisOutputHold.qml`
- `modules/iris/components/IrisPlacePicker.qml`
- `modules/iris/components/IrisScrubber.qml`
- `modules/iris/components/IrisSlider.qml`
- `modules/iris/components/IrisSpring.qml`
- `modules/iris/components/IrisStudioMask.qml`
- `modules/iris/components/IrisSurface.qml`
- `modules/iris/components/IrisText.qml`
- `modules/iris/components/IrisWheelIntent.qml`
- `modules/iris/components/IrisWheelPicker.qml`
- `modules/iris/components/qmldir`
- `modules/iris/control/IrisControlCenter.qml`
- `modules/iris/control/IrisQuickPanel.qml`
- `modules/iris/control/qmldir`
- `modules/iris/critical/ShellIrisCriticalPanels.qml`
- `modules/iris/dock/IrisDock.qml`
- `modules/iris/dock/qmldir`
- `modules/iris/edit/IrisEditBar.qml`
- `modules/iris/edit/qmldir`
- `modules/iris/field/IrisField.frag`
- `modules/iris/field/IrisField.frag.qsb`
- `modules/iris/field/IrisField.qml`
- `modules/iris/field/IrisGlassSource.qml`
- `modules/iris/field/qmldir`
- `modules/iris/frame/IrisFrame.qml`
- `modules/iris/frame/IrisFramePulse.qml`
- `modules/iris/frame/IrisReservations.qml`
- `modules/iris/frame/qmldir`
- `modules/iris/lock/IrisLockSurface.qml`
- `modules/iris/lock/qmldir`
- `modules/iris/notificationPopup/IrisBanners.qml`
- `modules/iris/notificationPopup/IrisNotificationPopup.qml`
- `modules/iris/notificationPopup/qmldir`
- `modules/iris/onScreenDisplay/IrisOSD.qml`
- `modules/iris/onScreenDisplay/qmldir`
- `modules/iris/palette/IrisPalette.qml`
- `modules/iris/palette/qmldir`
- `modules/iris/pieces/IrisPieces.qml`
- `modules/iris/pieces/qmldir`
- `modules/iris/polkit/IrisPolkit.qml`
- `modules/iris/polkit/IrisPolkitContent.qml`
- `modules/iris/polkit/qmldir`
- `modules/iris/preview/IrisGroupPreview.qml`
- `modules/iris/preview/IrisMotionLab.qml`
- `modules/iris/preview/IrisPreviewStage.qml`
- `modules/iris/preview/IrisScreenPreview.qml`
- `modules/iris/preview/IrisTargetPreview.qml`
- `modules/iris/preview/qmldir`
- `modules/iris/regionSelector/IrisOptionsToolbar.qml`
- `modules/iris/regionSelector/qmldir`
- `modules/iris/session/IrisSessionScreen.qml`
- `modules/iris/session/qmldir`
- `modules/iris/settings/IrisOptions.qml`
- `modules/iris/settings/IrisSetting.qml`
- `modules/iris/settings/IrisSettings.qml`
- `modules/iris/settings/IrisThemes.qml`
- `modules/iris/settings/qmldir`
- `modules/iris/sidebar/IrisSidebar.qml`
- `modules/iris/sidebar/IrisSidebarEdge.qml`
- `modules/iris/sidebar/IrisSidebarEditor.qml`
- `modules/iris/sidebar/IrisSidebarSection.qml`
- `modules/iris/sidebar/qmldir`
- `modules/iris/stage/IrisCardContent.qml`
- `modules/iris/stage/IrisStage.qml`
- `modules/iris/stage/qmldir`
- `modules/iris/studio/IrisStudio.qml`
- `modules/iris/studio/qmldir`
- `modules/iris/style/IrisMood.qml`
- `modules/iris/style/IrisStyle.qml`
- `modules/iris/style/qmldir`
- `modules/iris/wallpaper/IrisWallpaperPicker.qml`
- `modules/iris/wallpaper/WallpaperDiscovery.qml`
- `modules/iris/wallpaper/WallpaperEmpty.qml`
- `modules/iris/wallpaper/WallpaperFolders.qml`
- `modules/iris/wallpaper/WallpaperShowcase.qml`
- `modules/iris/wallpaper/WallpaperTile.qml`
- `modules/iris/wallpaper/qmldir`
- `modules/iris/widgets/FaceAction.qml`
- `modules/iris/widgets/FaceAvatar.qml`
- `modules/iris/widgets/FaceChoice.qml`
- `modules/iris/widgets/FaceDial.qml`
- `modules/iris/widgets/FaceFigure.qml`
- `modules/iris/widgets/FaceHeader.qml`
- `modules/iris/widgets/FaceText.qml`
- `modules/iris/widgets/IrisAgendaFace.qml`
- `modules/iris/widgets/IrisBatteryFace.qml`
- `modules/iris/widgets/IrisCalendarFace.qml`
- `modules/iris/widgets/IrisClockFace.qml`
- `modules/iris/widgets/IrisControlsFace.qml`
- `modules/iris/widgets/IrisDateFace.qml`
- `modules/iris/widgets/IrisDayFace.qml`
- `modules/iris/widgets/IrisFaceData.qml`
- `modules/iris/widgets/IrisNewsFace.qml`
- `modules/iris/widgets/IrisNotesFace.qml`
- `modules/iris/widgets/IrisNowPlayingFace.qml`
- `modules/iris/widgets/IrisProfileFace.qml`
- `modules/iris/widgets/IrisScreenTimeFace.qml`
- `modules/iris/widgets/IrisSizeGrip.qml`
- `modules/iris/widgets/IrisTimerFace.qml`
- `modules/iris/widgets/IrisTodoFace.qml`
- `modules/iris/widgets/IrisUptimeFace.qml`
- `modules/iris/widgets/IrisVitalsFace.qml`
- `modules/iris/widgets/IrisWeatherFace.qml`
- `modules/iris/widgets/IrisWidgetControls.qml`
- `modules/iris/widgets/IrisWidgetFace.qml`
- `modules/iris/widgets/IrisWidgetGallery.qml`
- `modules/iris/widgets/IrisWorldClockFace.qml`
- `modules/iris/widgets/qmldir`
- `modules/japaneseLookup/JapaneseLookup.qml`
- `modules/japaneseLookup/qmldir`
- `modules/lock/Lock.qml`
- `modules/lock/LockMediaWidget.qml`
- `modules/lock/LockSurface.qml`
- `modules/mascot/MascotCompanion.qml`
- `modules/mascot/MascotRomp.qml`
- `modules/mediaControls/BarMediaPlayerItem.qml`
- `modules/mediaControls/MediaControls.qml`
- `modules/mediaControls/PlayerControl.qml`
- `modules/mediaControls/components/MediaOrganicEdgeAura.qml`
- `modules/mediaControls/components/MediaVisualizerOverlay.qml`
- `modules/mediaControls/components/PlayerInfo.qml`
- `modules/mediaControls/components/PlayerProgress.qml`
- `modules/mediaControls/components/qmldir`
- `modules/mediaControls/presets/AlbumArtPlayer.qml`
- `modules/mediaControls/presets/ClassicPlayer.qml`
- `modules/mediaControls/presets/CompactPlayer.qml`
- `modules/mediaControls/presets/ExpandingLyricsPlayer.qml`
- `modules/mediaControls/presets/FullPlayer.qml`
- `modules/mediaControls/presets/LyricsPlayer.qml`
- `modules/mediaControls/presets/LyricsSplitPlayer.qml`
- `modules/mediaControls/presets/MinimalPlayer.qml`
- `modules/mediaControls/presets/VisualizerPlayer.qml`
- `modules/onScreenDisplay/OnScreenDisplay.qml`
- `modules/onScreenDisplay/OsdValueIndicator.qml`
- `modules/onScreenDisplay/indicators/KeyboardLayoutIndicator.qml`
- `modules/onScreenDisplay/indicators/VoiceSearchIndicator.qml`
- `modules/overview/ActionModeView.qml`
- `modules/overview/OrbitFocusLens.qml`
- `modules/overview/OrbitOrbitalStage.qml`
- `modules/overview/OrbitPocket.qml`
- `modules/overview/OrbitShelf.qml`
- `modules/overview/OrbitStudio.qml`
- `modules/overview/OrbitStudioWorkspace.qml`
- `modules/overview/OrbitTuning.qml`
- `modules/overview/Overview.qml`
- `modules/overview/OverviewAllAppsGrid.qml`
- `modules/overview/OverviewDashboard.qml`
- `modules/overview/OverviewNiriWidget.qml`
- `modules/overview/SearchBar.qml`
- `modules/overview/SearchItem.qml`
- `modules/overview/SearchWidget.qml`
- `modules/overview/qmldir`
- `modules/pill/MusicBars.qml`
- `modules/pill/Pill.qml`
- `modules/pill/PillBar.qml`
- `modules/pill/PillMixer.qml`
- `modules/pill/PillNotifs.qml`
- `modules/pill/PillRecorder.qml`
- `modules/pill/PillSpectrumWings.qml`
- `modules/pill/PillSysmon.qml`
- `modules/pill/PillTheme.qml`
- `modules/polkit/PolkitContent.qml`
- `modules/recordingOsd/RecordingOsd.qml`
- `modules/regionSelector/AnnotationEditor.qml`
- `modules/regionSelector/OptionsToolbar.qml`
- `modules/regionSelector/RegionSelection.qml`
- `modules/screenCorners/ScreenCorners.qml`
- `modules/sessionScreen/SessionActionButton.qml`
- `modules/sessionScreen/SessionScreen.qml`
- `modules/settings/AdvancedConfig.qml`
- `modules/settings/AiConfig.qml`
- `modules/settings/AutostartConfig.qml`
- `modules/settings/BackgroundConfig.qml`
- `modules/settings/BarConfig.qml`
- `modules/settings/CheatsheetConfig.qml`
- `modules/settings/ColorPickerRow.qml`
- `modules/settings/DashboardConfig.qml`
- `modules/settings/DesktopWidgetsConfig.qml`
- `modules/settings/DockConfig.qml`
- `modules/settings/EditorialStyleEditor.qml`
- `modules/settings/EffectsConfig.qml`
- `modules/settings/GeneralConfig.qml`
- `modules/settings/GowallWallpaperEditor.qml`
- `modules/settings/InterfaceConfig.qml`
- `modules/settings/IrisConfig.qml`
- `modules/settings/M3LayoutSection.qml`
- `modules/settings/MascotConfig.qml`
- `modules/settings/ModulesConfig.qml`
- `modules/settings/MonitorVisibilityConfig.qml`
- `modules/settings/NiriConfig.qml`
- `modules/settings/OrbitConfig.qml`
- `modules/settings/OrbitShelfEditor.qml`
- `modules/settings/OrganicEdgeSettings.qml`
- `modules/settings/QuickConfig.qml`
- `modules/settings/RicelinConfig.qml`
- `modules/settings/ServicesConfig.qml`
- `modules/settings/SettingsEditorial.qml`
- `modules/settings/SettingsFocus.qml`
- `modules/settings/SettingsOverlay.qml`
- `modules/settings/SettingsPageHost.qml`
- `modules/settings/SettingsPageRegistry.qml`
- `modules/settings/SidebarsConfig.qml`
- `modules/settings/ThemesConfig.qml`
- `modules/settings/ToolsConfig.qml`
- `modules/settings/WaffleConfig.qml`
- `modules/settings/WorkspaceStripConfig.qml`
- `modules/settings/qmldir`
- `modules/settings/settings-search-index.generated.json`
- `modules/shellUpdate/ShellUpdateOverlay.qml`
- `modules/sidebar/SidebarHost.qml`
- `modules/sidebarLeft/AiChat.qml`
- `modules/sidebarLeft/Anime.qml`
- `modules/sidebarLeft/ApiCommandButton.qml`
- `modules/sidebarLeft/ApiInputBoxIndicator.qml`
- `modules/sidebarLeft/ScrollToBottomButton.qml`
- `modules/sidebarLeft/SidebarLeftContent.qml`
- `modules/sidebarLeft/SoftwareView.qml`
- `modules/sidebarLeft/ToolsView.qml`
- `modules/sidebarLeft/Wallhaven.qml`
- `modules/sidebarLeft/WallhavenView.qml`
- `modules/sidebarLeft/YtMusicView.qml`
- `modules/sidebarLeft/aiChat/AiMessage.qml`
- `modules/sidebarLeft/aiChat/AiMessageControlButton.qml`
- `modules/sidebarLeft/aiChat/AiModelSelector.qml`
- `modules/sidebarLeft/aiChat/AnnotationSourceButton.qml`
- `modules/sidebarLeft/aiChat/AttachedFileIndicator.qml`
- `modules/sidebarLeft/aiChat/ChatHistoryPanel.qml`
- `modules/sidebarLeft/aiChat/MessageCodeBlock.qml`
- `modules/sidebarLeft/aiChat/MessageThinkBlock.qml`
- `modules/sidebarLeft/aiChat/SearchQueryButton.qml`
- `modules/sidebarLeft/animeSchedule/AnimeCard.qml`
- `modules/sidebarLeft/animeSchedule/AnimeScheduleView.qml`
- `modules/sidebarLeft/innertune/ITAccountScreen.qml`
- `modules/sidebarLeft/innertune/ITLibraryScreen.qml`
- `modules/sidebarLeft/innertune/ITLyrics.qml`
- `modules/sidebarLeft/innertune/ITNavigationBar.qml`
- `modules/sidebarLeft/innertune/ITNavigationTitle.qml`
- `modules/sidebarLeft/innertune/ITPlayer.qml`
- `modules/sidebarLeft/innertune/ITQueue.qml`
- `modules/sidebarLeft/innertune/InnerTuneHome.qml`
- `modules/sidebarLeft/innertune/InnerTuneSearch.qml`
- `modules/sidebarLeft/innertune/InnerTuneView.qml`
- `modules/sidebarLeft/news/NewsView.qml`
- `modules/sidebarLeft/plugins/PluginsTab.qml`
- `modules/sidebarLeft/plugins/WebAppView.qml`
- `modules/sidebarLeft/translator/LanguageSelectorButton.qml`
- `modules/sidebarLeft/widgets/ContextCard.qml`
- `modules/sidebarLeft/widgets/ControlsCard.qml`
- `modules/sidebarLeft/widgets/CryptoWidget.qml`
- `modules/sidebarLeft/widgets/DraggableWidgetContainer.qml`
- `modules/sidebarLeft/widgets/GlanceHeader.qml`
- `modules/sidebarLeft/widgets/MediaPlayerWidget.qml`
- `modules/sidebarLeft/widgets/QuickLaunch.qml`
- `modules/sidebarLeft/widgets/QuickNote.qml`
- `modules/sidebarLeft/widgets/QuickWallpaper.qml`
- `modules/sidebarLeft/widgets/StatusRings.qml`
- `modules/sidebarLeft/widgets/WorldClockWidget.qml`
- `modules/sidebarLeft/widgets/YtMusicPlayerCard.qml`
- `modules/sidebarLeft/widgets/YtMusicTrackItem.qml`
- `modules/sidebarRight/BottomWidgetGroup.qml`
- `modules/sidebarRight/CenterWidgetGroup.qml`
- `modules/sidebarRight/CompactMediaPlayer.qml`
- `modules/sidebarRight/CompactSidebarRightContent.qml`
- `modules/sidebarRight/QuickSliders.qml`
- `modules/sidebarRight/SectionDivider.qml`
- `modules/sidebarRight/SidebarProfileHeader.qml`
- `modules/sidebarRight/SidebarRightContent.qml`
- `modules/sidebarRight/bluetoothDevices/BluetoothDeviceItem.qml`
- `modules/sidebarRight/calculator/CalculatorWidget.qml`
- `modules/sidebarRight/calendar/CalendarDayButton.qml`
- `modules/sidebarRight/calendar/CalendarDayDetail.qml`
- `modules/sidebarRight/calendar/CalendarEventRow.qml`
- `modules/sidebarRight/calendar/CalendarHeaderButton.qml`
- `modules/sidebarRight/calendar/CalendarWidget.qml`
- `modules/sidebarRight/events/EventCard.qml`
- `modules/sidebarRight/events/EventsWidget.qml`
- `modules/sidebarRight/notepad/NotepadWidget.qml`
- `modules/sidebarRight/notifications/NotificationList.qml`
- `modules/sidebarRight/notifications/NotificationStatusButton.qml`
- `modules/sidebarRight/pomodoro/CountdownTimer.qml`
- `modules/sidebarRight/pomodoro/PomodoroTimer.qml`
- `modules/sidebarRight/pomodoro/Stopwatch.qml`
- `modules/sidebarRight/quickToggles/AbstractQuickPanel.qml`
- `modules/sidebarRight/quickToggles/androidStyle/AndroidNetworkToggle.qml`
- `modules/sidebarRight/quickToggles/androidStyle/AndroidQuickToggleButton.qml`
- `modules/sidebarRight/quickToggles/classicStyle/NetworkToggle.qml`
- `modules/sidebarRight/quickToggles/classicStyle/QuickToggleButton.qml`
- `modules/sidebarRight/screenTime/ScreenTimeWidget.qml`
- `modules/sidebarRight/sysmon/SysMonWidget.qml`
- `modules/sidebarRight/todo/TaskList.qml`
- `modules/sidebarRight/todo/TodoWidget.qml`
- `modules/sidebarRight/volumeMixer/AudioDeviceSelectorButton.qml`
- `modules/sidebarRight/volumeMixer/VolumeDialogContent.qml`
- `modules/sidebarRight/volumeMixer/VolumeMixerEntry.qml`
- `modules/sidebarRight/weather/WeatherDetailWidget.qml`
- `modules/sidebarRight/wifiNetworks/WifiDialog.qml`
- `modules/sidebarRight/wifiNetworks/WifiNetworkItem.qml`
- `modules/verticalBar/Resources.qml`
- `modules/verticalBar/VerticalBar.qml`
- `modules/verticalBar/VerticalBarContent.qml`
- `modules/verticalBar/VerticalClockWidget.qml`
- `modules/waffle/actionCenter/MediaPaneContent.qml`
- `modules/waffle/actionCenter/wifi/WWifiNetworkItem.qml`
- `modules/waffle/backdrop/WaffleBackdrop.qml`
- `modules/waffle/background/WaffleBackground.qml`
- `modules/waffle/bar/WaffleBar.qml`
- `modules/waffle/lock/WaffleLockSurface.qml`
- `modules/waffle/lock/WaffleLockSurfaceSafe.qml`
- `modules/waffle/looks/Looks.qml`
- `modules/waffle/onScreenDisplay/WaffleOSD.qml`
- `modules/waffle/settings/WSettingsContent.qml`
- `modules/waffle/settings/WSettingsTextField.qml`
- `modules/waffle/settings/pages/WAboutPage.qml`
- `modules/waffle/settings/pages/WBackgroundPage.qml`
- `modules/waffle/settings/pages/WGeneralPage.qml`
- `modules/waffle/settings/pages/WInterfacePage.qml`
- `modules/waffle/settings/pages/WMascotPage.qml`
- `modules/waffle/settings/pages/WModulesPage.qml`
- `modules/waffle/settings/pages/WThemesPage.qml`
- `modules/waffle/widgets/WidgetsContent.qml`
- `modules/wallpaperLauncher/WallpaperLauncherContent.qml`
- `modules/wallpaperSelector/WallpaperCoverflowGallery.qml`
- `modules/wallpaperSelector/WallpaperCoverflowView.qml`
- `modules/wallpaperSelector/WallpaperSelectorContent.qml`
- `modules/wallpaperSelector/WallpaperSelectorRouter.qml`
- `modules/wallpaperSelector/WallpaperSkewView.qml`
- `modules/workspaceStrip/WorkspaceStripDragProxy.qml`
- `nix/home-module.nix`
- `nix/mascot-pack.nix`
- `nix/mascot-package.nix`
- `nix/module-common.nix`
- `nix/nixos-module.nix`
- `nix/package.nix`
- `nix/runtime-source-filter.nix`
- `scripts/accounts/set-avatar.sh`
- `scripts/audio/easyeffects-eq.sh`
- `scripts/capture-windows.sh`
- `scripts/cava/generate_config.sh`
- `scripts/cava/resolve_audio_source.py`
- `scripts/clipboard-copy.sh`
- `scripts/clipboard-image-store.sh`
- `scripts/colors/apply-gtk-theme.sh`
- `scripts/colors/modules/30-editors.sh`
- `scripts/colors/neovim_themegen.sh`
- `scripts/colors/system24_palette.py`
- `scripts/colors/targets/editors.json`
- `scripts/completions/inir.fish`
- `scripts/completions/inir.zsh`
- `scripts/detect_sensors.py`
- `scripts/generate-settings-search-index.py`
- `scripts/images/least_busy_region.py`
- `scripts/inir`
- `scripts/innertube-runtime.sh`
- `scripts/innertube.py`
- `scripts/install-japanese-dictionary.sh`
- `scripts/japanese-dictionary.py`
- `scripts/lib/ipc-registry.sh`
- `scripts/lib/niri-session-env.sh`
- `scripts/lyrics/lyrics.py`
- `scripts/musicRecognition/recognize-music.sh`
- `scripts/niri-config.py`
- `scripts/ocr-runner.sh`
- `scripts/orbit-visual-audit.sh`
- `scripts/quickshell-env.sh`
- `scripts/release.sh`
- `scripts/sddm/install-pixel-sddm.sh`
- `scripts/study-decks.py`
- `scripts/test-brightness-policy.js`
- `scripts/test-detect-sensors.py`
- `scripts/test-idle-policy.js`
- `scripts/test-iris-defaults.py`
- `scripts/test-iris-performance-contract.py`
- `scripts/test-iris-style-tokens.py`
- `scripts/test-local-distribution.sh`
- `scripts/test-lock-wake-policy.js`
- `scripts/test-runtime-payload.py`
- `scripts/translate-ocr.sh`
- `scripts/verify-docs.sh`
- `scripts/videos/record.sh`
- `scripts/wiki-sync.sh`
- `scripts/yt-dlp-runtime.sh`
- `scripts/ytmusic_auth.py`
- `sdata/dist-arch/inir-audio/PKGBUILD`
- `sdata/dist-arch/inir-deps/PKGBUILD`
- `sdata/dist-arch/inir-fonts/PKGBUILD`
- `sdata/dist-arch/inir-screencapture/PKGBUILD`
- `sdata/dist-arch/inir-toolkit/PKGBUILD`
- `sdata/dist-arch/install-deps.sh`
- `sdata/dist-debian/install-deps.sh`
- `sdata/dist-fedora/install-deps.sh`
- `sdata/lib/deps-map.sh`
- `sdata/lib/dist-determine.sh`
- `sdata/lib/doctor.sh`
- `sdata/lib/extras.sh`
- `sdata/lib/functions.sh`
- `sdata/lib/migrations.sh`
- `sdata/lib/package-installers.sh`
- `sdata/lib/robust-update.sh`
- `sdata/lib/runtime-payload.py`
- `sdata/lib/snapshots.sh`
- `sdata/lib/tui.sh`
- `sdata/lib/uninstall.sh`
- `sdata/migrations/034-cliphist-text-watcher.sh`
- `sdata/migrations/037-remembered-super-shift-s.sh`
- `sdata/migrations/038-cliphist-preview-filter.sh`
- `sdata/migrations/039-sddm-preserve-greeter-backend.sh`
- `sdata/migrations/040-niri-session-environment-lifecycle.sh`
- `sdata/migrations/041-visualizer-app-filter-semantics.sh`
- `sdata/migrations/042-cliphist-no-synthetic-newline.sh`
- `sdata/runtime-exclusions.json`
- `sdata/subcmd-install/0.greeting.sh`
- `sdata/subcmd-install/3.files.sh`
- `sdata/uv/README.md`
- `sdata/uv/requirements.in`
- `sdata/uv/requirements.txt`
- `services/AppSearch.qml`
- `services/Audio.qml`
- `services/AwwwBackend.qml`
- `services/BluetoothStatus.qml`
- `services/Booru.qml`
- `services/Brightness.qml`
- `services/CustomWidgets.qml`
- `services/DevNavigation.qml`
- `services/GameMode.qml`
- `services/GlobalActions.qml`
- `services/Hyprsunset.qml`
- `services/Idle.qml`
- `services/JapaneseDictionary.qml`
- `services/LiveActivities.qml`
- `services/MascotChaos.qml`
- `services/MinimizedWindows.qml`
- `services/Network.qml`
- `services/NiriService.qml`
- `services/Notifications.qml`
- `services/RecorderStatus.qml`
- `services/ResourceUsage.qml`
- `services/ShellLayoutController.qml`
- `services/ShellUpdates.qml`
- `services/TaskbarApps.qml`
- `services/ThemeService.qml`
- `services/TimerService.qml`
- `services/Todo.qml`
- `services/Translation.qml`
- `services/Updates.qml`
- `services/Wallhaven.qml`
- `services/WallpaperListener.qml`
- `services/Wallpapers.qml`
- `services/Weather.qml`
- `services/WebWallpaper.qml`
- `services/WidgetPowerManager.qml`
- `services/WindowPreviewService.qml`
- `services/WorldClock.qml`
- `services/YtMusic.qml`
- `services/brightnessPolicy.js`
- `services/deferred/AnimeService.qml`
- `services/deferred/CavaService.qml`
- `services/deferred/Cliphist.qml`
- `services/deferred/EasyEffects.qml`
- `services/deferred/GowallService.qml`
- `services/deferred/InnerTube.qml`
- `services/idlePolicy.js`
- `services/network/WifiAccessPoint.qml`
- `services/qmldir`
- `settings.qml`
- `setup`
- `shell.qml`
- `translations/ar_SA.json`
- `translations/de_DE.json`
- `translations/en_US.json`
- `translations/es_AR.json`
- `translations/fr_FR.json`
- `translations/he_HE.json`
- `translations/hi_IN.json`
- `translations/it_IT.json`
- `translations/ja_JP.json`
- `translations/kl_GL.json`
- `translations/ko_KR.json`
- `translations/l10n/README.md`
- `translations/l10n/glossary.json`
- `translations/l10n/locale-guides.json`
- `translations/pt_BR.json`
- `translations/ru_RU.json`
- `translations/tools/README.md`
- `translations/tools/auto-translate.js`
- `translations/tools/l10n.py`
- `translations/tools/manage-translations.sh`
- `translations/tools/translation-cleaner.py`
- `translations/tools/translation-manager.py`
- `translations/tr_TR.json`
- `translations/uk_UA.json`
- `translations/vi_VN.json`
- `translations/zh_CN.json`
- `welcome.qml`

## Commit Message

```
Merge upstream/main v2.31.0 (9574fa42) into the omSenjalia fork

Brings 278 upstream commits (v2.29.3 era -> v2.31.0) into the fork
snapshot: the iRiS panel family (Studio, Island, dock, widgets,
overlays), wallpaper gallery rebuild, Japanese OCR study tools,
EasyEffects equalizer, Control Center game mode, Settings group
reorganisation, and the 2.30.0/2.31.0 release changes.

The fork history (single snapshot commit d05778fa) is unrelated to
upstream, so the three-way merge was computed on a temporary graft of
the snapshot onto its closest upstream ancestor 4bcd67e7
("fix(background): release stalled parallax transitions"), and the
resulting tree was re-parented onto d05778fa as first parent.

Conflict resolutions:
- scripts/lib/ipc-registry.sh: took upstream's regenerated registry
  (63 targets) and re-inserted the fork's powerProfile entries
  (64 targets total); hand-merged because both sides diverged in this
  generated artifact. Note: the fork's generate-ipc-registry.py reads
  docs/src/content/docs/reference/ipc.md, which still needs the new
  upstream targets (equalizer, iris, orbit, ...) before regenerating.
- modules/settings/GeneralConfig.qml: upstream's SettingsTaskLoader
  refactor with the fork's Power Profile subsection kept inside the
  power section (auto-merged, verified by hand).
- defaults/niri/config.d/70-binds.kdl: upstream's region-menu and
  equalizer binds plus the fork's XF86Launch4 power-profile binds
  (auto-merged).
- docs/: kept upstream's canonical flat docs/*.md tree intact (the
  Makefile, Arch PKGBUILDs and verify-docs.sh install/check those
  files); the fork's Astro docs site under docs/src/ is preserved
  exactly as in the fork snapshot.
- Fork-only additions preserved: custom/, packages.txt,
  .github/workflows/{weekly-summary,docs-changelog}.yml,
  sdata/subcmd-install/4.custom.sh, the fish davinci alias, and the
  power-profile service/settings/binds feature.
```

## AI Agent Notes

<!-- AI agents: fill this in after working on related code.
     Explain WHY changes were made, any gotchas, and what
     other agents should know about this change. -->

---

