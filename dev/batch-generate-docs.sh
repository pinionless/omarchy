#!/bin/bash

# Batch generate documentation for all changed files
cd /home/pinion/github/FORKS/omarchy

# Define file categories and their standard change descriptions
declare -A descriptions
descriptions[applications/]="Terminal replacement: alacritty → ghostty"
descriptions[bin/omarchy-]="Terminal/editor replacements as per critical-changes.md"
descriptions[config/alacritty/]="File deleted - alacritty replaced with ghostty"
descriptions[config/ghostty/]="New ghostty configuration files"
descriptions[config/hypr/]="Keybinding and app rule updates for replaced applications"
descriptions[config/nvim/]="File deleted - nvim replaced with nano"
descriptions[config/waybar/]="Terminal replacement in waybar configuration"
descriptions[default/]="Template updates for application replacements"
descriptions[themes/]="Theme file updates: removed alacritty/neovim, added ghostty"
descriptions[install/]="Installation script updates for application changes"

# Generate docs for all changed files
while IFS= read -r file; do
    if [[ -f "$file" || ! -e "$file" ]]; then
        # Determine category and description
        desc="Application replacement updates"
        reasoning="Updated as part of systematic application replacements defined in critical-changes.md"
        
        for pattern in "${!descriptions[@]}"; do
            if [[ "$file" == $pattern* ]]; then
                desc="${descriptions[$pattern]}"
                break
            fi
        done
        
        # Special cases for specific files
        case "$file" in
            applications/nvim.desktop|applications/typora.desktop|applications/hidden/dropbox.desktop)
                desc="Desktop file deleted"
                reasoning="Removed as part of application cleanup - these apps are no longer installed"
                ;;
            bin/omarchy-install-dropbox|bin/omarchy-install-tailscale)
                desc="Installation script deleted"
                reasoning="Removed installer for application that is no longer supported in minimal fork"
                ;;
            config/alacritty/*|config/nvim/*|config/xournalpp/*)
                desc="Configuration deleted"
                reasoning="Configuration no longer needed after application was replaced or removed"
                ;;
            themes/*/alacritty.toml|themes/*/neovim.lua)
                desc="Theme file deleted"
                reasoning="Theme configuration removed when replacing alacritty→ghostty and nvim→nano"
                ;;
            themes/*/ghostty.config)
                desc="New ghostty theme configuration"
                reasoning="Added theme support for ghostty terminal to replace alacritty theme"
                ;;
            bin/omarchy-vscode-theme-handler)
                desc="New VSCode theme integration handler"
                reasoning="Added to provide synchronized theme switching for VSCode in addition to terminal themes"
                ;;
        esac
        
        echo "Documenting: $file"
        /home/pinion/github/FORKS/omarchy/dev/generate-docs.sh "$file" "$desc" "$reasoning"
    fi
done < /tmp/changed_files.txt

echo "Documentation generation complete!"