---
title: "EDITED"
description: "Custom addition: EDITED"
---

# EDITED.md — Fork Customizations & History

This document logs custom features, tweaks, and additions made to this fork of `snowarch/iNiR`.

---

## [NEW] Power Profile Cycling (Fn+Q)

**Date:** 2026-06-21

### What changed

Added a power profile cycling integration via UPower:
- Ported power profile cycling to `services/PowerProfilePersistence.qml`.
- Added dynamic desktop notifications displaying the active profile and icons.
- Mapped physical shortcuts `XF86Launch4` (Fn+Q) and `Shift+XF86Launch4` (Shift+Fn+Q) in `defaults/niri/config.d/70-binds.kdl`.
- Added a full profile selector UI inside the settings panel `modules/settings/GeneralConfig.qml`.

### How to use

- Press **Fn+Q** or **Shift+Fn+Q** to cycle profiles.
- Run via IPC:
  ```bash
  inir powerProfile cycle
  ```
- Set directly:
  ```bash
  inir powerProfile set performance
  ```
