#!/bin/bash
# Extra packages to install during ./setup install / update
#
# HOW TO USE:
#   Add active package names inside the function body, one per line.
#   Do NOT remove the function name or change its structure.

custom_packages() {
    # Custom packages for iNiR:
    zen-browser
    vlc-plugins-all
    claude-code
    antigravity
    ollama
    obs-studio
    vlc
    vesktop
    obsidian
    hermes-agent-git
    hplip # printer
    foo2zjs # printer

    # Leave this no-op command to prevent syntax errors
    :
}
