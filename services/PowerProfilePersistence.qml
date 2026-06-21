pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Services.UPower
import qs.modules.common
import qs.services

Singleton {
    id: root

    property bool _initialized: false

    readonly property string currentProfileName: {
        switch(PowerProfiles.profile) {
            case PowerProfile.PowerSaver:   return Translation.tr("Power Saver")
            case PowerProfile.Balanced:     return Translation.tr("Balanced")
            case PowerProfile.Performance:  return Translation.tr("Performance")
            default:                        return Translation.tr("Unknown")
        }
    }

    readonly property string currentProfileIcon: {
        switch(PowerProfiles.profile) {
            case PowerProfile.PowerSaver:   return "energy_savings_leaf"
            case PowerProfile.Balanced:     return "airwave"
            case PowerProfile.Performance:  return "local_fire_department"
            default:                        return "power_settings_new"
        }
    }

    readonly property int profileIndex: {
        switch(PowerProfiles.profile) {
            case PowerProfile.PowerSaver:   return 0
            case PowerProfile.Balanced:     return 1
            case PowerProfile.Performance:  return 2
            default:                        return 1
        }
    }

    signal profileChanged(string profileName)

    function cycle() {
        if (PowerProfiles.hasPerformanceProfile) {
            switch(PowerProfiles.profile) {
                case PowerProfile.PowerSaver:
                    PowerProfiles.profile = PowerProfile.Balanced
                    break;
                case PowerProfile.Balanced:
                    PowerProfiles.profile = PowerProfile.Performance
                    break;
                case PowerProfile.Performance:
                    PowerProfiles.profile = PowerProfile.PowerSaver
                    break;
            }
        } else {
            PowerProfiles.profile = PowerProfiles.profile === PowerProfile.Balanced
                ? PowerProfile.PowerSaver
                : PowerProfile.Balanced
        }
        root.profileChanged(root.currentProfileName)
        _showNotification()
    }

    function setProfile(name) {
        switch(name.toLowerCase()) {
            case "power-saver":
            case "powersaver":
                PowerProfiles.profile = PowerProfile.PowerSaver; break;
            case "balanced":
                PowerProfiles.profile = PowerProfile.Balanced; break;
            case "performance":
                PowerProfiles.profile = PowerProfile.Performance; break;
        }
        root.profileChanged(root.currentProfileName)
        _showNotification()
    }

    function _showNotification() {
        Quickshell.execDetached([
            "notify-send",
            "-i", "power-profile-" + (PowerProfiles.profile === PowerProfile.Performance
                ? "performance" : PowerProfiles.profile === PowerProfile.PowerSaver
                ? "power-saver" : "balanced") + "-symbolic",
            "-t", "2000",
            "-h", "string:x-canonical-private-synchronous:power-profile",
            Translation.tr("Power Profile"),
            root.currentProfileName
        ])
    }

    // ── IPC: inir powerProfile cycle ───────────────────────────────
    IpcHandler {
        target: "powerProfile"

        function cycle(): void {
            root.cycle()
        }

        function set(profileName: string): void {
            root.setProfile(profileName)
        }
    }

    function _profileToString(profile): string {
        switch (profile) {
            case PowerProfile.PowerSaver: return "power-saver"
            case PowerProfile.Balanced: return "balanced"
            case PowerProfile.Performance: return "performance"
        }
        return ""
    }

    function _stringToProfile(value: string): int {
        switch (String(value ?? "").trim()) {
            case "power-saver": return PowerProfile.PowerSaver
            case "balanced": return PowerProfile.Balanced
            case "performance": return PowerProfile.Performance
        }
        return -1
    }

    function _applyPreferredProfile(): void {
        if (!Config.ready || root._initialized)
            return

        root._initialized = true

        const restore = Config.options?.powerProfiles?.restoreOnStart ?? true
        const preferred = Config.options?.powerProfiles?.preferredProfile ?? ""

        if (!restore)
            return

        const desired = root._stringToProfile(preferred)
        if (desired < 0)
            return

        if (!PowerProfiles.hasPerformanceProfile && desired === PowerProfile.Performance)
            return

        if (PowerProfiles.profile !== desired) {
            PowerProfiles.profile = desired
        }
    }

    Connections {
        target: Config
        function onReadyChanged() {
            if (Config.ready) {
                Qt.callLater(() => root._applyPreferredProfile())
            }
        }
    }

    Component.onCompleted: {
        if (Config.ready) {
            Qt.callLater(() => root._applyPreferredProfile())
        }
    }

    Connections {
        target: PowerProfiles
        function onProfileChanged() {
            const s = root._profileToString(PowerProfiles.profile)
            if (s.length === 0)
                return
            Config.setNestedValue("powerProfiles.preferredProfile", s)
        }
    }
}
