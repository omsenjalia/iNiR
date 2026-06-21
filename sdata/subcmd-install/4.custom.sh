# This script is meant to be sourced.
# It's not for directly running.
# Runs at the end of ./setup install to process custom additions.

printf "${STY_CYAN}[$0]: 4. Running custom additions\n${STY_RST}"

# Check if custom directory exists
if [[ ! -d "custom" ]]; then
    printf "${STY_YELLOW}[$0]: No custom/ directory found, skipping custom additions\n${STY_RST}"
    return 0
fi

# Source all .sh files in custom/ (except README.md)
for custom_script in custom/*.sh; do
    # Skip README.md
    [[ "$custom_script" == *"README.md" ]] && continue
    # Skip if no matches (glob might not expand)
    [[ -e "$custom_script" ]] || continue

    printf "${STY_BLUE}[$0]: Sourcing $custom_script\n${STY_RST}"
    source "$custom_script"
done

# Run custom_packages if defined
if declare -f custom_packages > /dev/null; then
    printf "${STY_CYAN}[$0]: Running custom_packages()...\n${STY_RST}"
    # Read lines from function and collect package names (skip syntax/comments)
    while IFS= read -r line; do
        line="${line#\#}"
        line="${line#"${line%%[![:space:]]*}"}"  # trim leading whitespace
        [[ -z "$line" ]] && continue
        [[ ${#line} -lt 2 ]] && continue
        [[ "$line" == *"function"* ]] && continue
        [[ "$line" == *"}"* ]] && continue
        [[ "$line" == *"{"* ]] && continue
        custom_packages+=("$line")
    done < <(type custom_packages | tail -n +3)  # Skip function definition lines

    if [[ ${#custom_packages[@]} -gt 0 ]]; then
        printf "${STY_GREEN}[$0]: Installing ${#custom_packages[@]} custom package(s) with yay\n${STY_RST}"
        v yay -S --noconfirm "${custom_packages[@]}"
    fi
fi

# Run custom_files if defined
if declare -f custom_files > /dev/null; then
    printf "${STY_CYAN}[$0]: Running custom_files()...\n${STY_RST}"
    custom_files
fi

# Run custom_commands if defined
if declare -f custom_commands > /dev/null; then
    printf "${STY_CYAN}[$0]: Running custom_commands()...\n${STY_RST}"
    while IFS= read -r line; do
        line="${line#\#}"
        line="${line#"${line%%[![:space:]]*}"}"  # trim leading whitespace
        [[ -z "$line" ]] && continue
        [[ ${#line} -lt 2 ]] && continue
        [[ "$line" == *"function"* ]] && continue
        [[ "$line" == *"}"* ]] && continue
        [[ "$line" == *"{"* ]] && continue
        printf "${STY_GREEN}[$0]: Running: $line\n${STY_RST}"
        bash -c "$line"
    done < <(type custom_commands | tail -n +3)
fi

# Run custom_misc if defined
if declare -f custom_misc > /dev/null; then
    printf "${STY_CYAN}[$0]: Running custom_misc()...\n${STY_RST}"
    while IFS= read -r line; do
        line="${line#\#}"
        line="${line#"${line%%[![:space:]]*}"}"  # trim leading whitespace
        [[ -z "$line" ]] && continue
        [[ ${#line} -lt 2 ]] && continue
        [[ "$line" == *"function"* ]] && continue
        [[ "$line" == *"}"* ]] && continue
        [[ "$line" == *"{"* ]] && continue
        printf "${STY_GREEN}[$0]: Running: $line\n${STY_RST}"
        bash -c "$line"
    done < <(type custom_misc | tail -n +3)
fi

printf "${STY_GREEN}[$0]: Custom additions complete\n${STY_RST}"
