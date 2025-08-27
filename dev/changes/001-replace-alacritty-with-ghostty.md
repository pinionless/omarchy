# Change Documentation Template

## Change Information
- **Change ID**: 001
- **Change Name**: replace-alacritty-with-ghostty
- **Date**: 2025-01-22
- **Author**: pinion

## Goal
Replace Alacritty terminal emulator with Ghostty across the entire Omarchy system. This includes removing all Alacritty configurations, package installations, and references, while adding equivalent Ghostty configurations and ensuring all terminal-related functionality works with the new terminal.

## Files Modified

### New Files
- `config/ghostty/config` - Main Ghostty configuration file
- `default/ghostty/screensaver.config` - Ghostty screensaver configuration
- `themes/catppuccin/ghostty.config` - Catppuccin theme for Ghostty
- `themes/catppuccin-latte/ghostty.config` - Catppuccin Latte theme for Ghostty
- `themes/tokyo-night/ghostty.config` - Tokyo Night theme for Ghostty
- `themes/gruvbox/ghostty.config` - Gruvbox theme for Ghostty
- `themes/matte-black/ghostty.config` - Matte Black theme for Ghostty
- `themes/nord/ghostty.config` - Nord theme for Ghostty
- `themes/rose-pine/ghostty.config` - Rose Pine theme for Ghostty
- `themes/everforest/ghostty.config` - Everforest theme for Ghostty
- `themes/kanagawa/ghostty.config` - Kanagawa theme for Ghostty
- `themes/osaka-jade/ghostty.config` - Osaka Jade theme for Ghostty
- `themes/ristretto/ghostty.config` - Ristretto theme for Ghostty

### Modified Files (Currently Existing)
- `config/hypr/bindings.conf` - Updated $terminal variable and all terminal commands to use ghostty
- `config/hypr/hypridle.conf` - Updated terminal references to ghostty  
- `config/waybar/config.jsonc` - Updated all alacritty commands to ghostty, added mpris module
- `applications/About.desktop` - Updated Exec command: alacritty → ghostty with class=value syntax
- `applications/Activity.desktop` - Updated Exec command: alacritty → ghostty with class=value syntax
- `applications/Docker.desktop` - Updated Exec command: alacritty → ghostty with class=value syntax
- `applications/wiremix.desktop` - Updated Exec command: alacritty → ghostty with class=value syntax
- `bin/omarchy-menu` - Updated terminal() function and all terminal references to ghostty
- `bin/omarchy-theme-set` - Updated to trigger ghostty config reload, added VSCode theme integration
- `bin/omarchy-font-current` - Updated to read font from ghostty config instead of alacritty
- `bin/omarchy-font-set` - Updated to modify ghostty config instead of alacritty
- `bin/omarchy-launch-screensaver` - Updated command and config file path for ghostty
- `bin/omarchy-cmd-screensaver` - Updated pkill command for ghostty screensaver class
- `bin/omarchy-lock-screen` - Updated pkill command for ghostty, added bitwarden integration
- `bin/omarchy-tui-install` - Updated terminal references to ghostty
- `bin/omarchy-tui-remove` - Updated terminal references to ghostty
- `bin/omarchy-vscode-theme-handler` - New script for VSCode theme synchronization
- `default/bash/aliases` - Updated terminal-related aliases for ghostty
- `default/bash/envs` - Updated terminal environment variables
- `default/hypr/apps.conf` - Updated window rules for ghostty application classes
- `default/hypr/apps/system.conf` - Updated system window rules
- `default/hypr/bindings.conf` - Updated default terminal bindings template

### Deleted Files
- `applications/nvim.desktop` - Removed (was also part of nvim→nano change)
- `install/development/terminal.sh` - Removed (terminal installation now handled elsewhere)
- `install/development/nvim.sh` - Removed (was also part of nvim→nano change)
- `config/alacritty/alacritty.toml` - Removed Alacritty main config
- `default/alacritty/screensaver.toml` - Removed Alacritty screensaver config
- `themes/catppuccin/alacritty.toml` - Removed Alacritty theme config
- `themes/catppuccin-latte/alacritty.toml` - Removed Alacritty theme config
- `themes/everforest/alacritty.toml` - Removed Alacritty theme config
- `themes/gruvbox/alacritty.toml` - Removed Alacritty theme config
- `themes/kanagawa/alacritty.toml` - Removed Alacritty theme config
- `themes/matte-black/alacritty.toml` - Removed Alacritty theme config
- `themes/nord/alacritty.toml` - Removed Alacritty theme config
- `themes/osaka-jade/alacritty.toml` - Removed Alacritty theme config
- `themes/ristretto/alacritty.toml` - Removed Alacritty theme config
- `themes/rose-pine/alacritty.toml` - Removed Alacritty theme config
- `themes/tokyo-night/alacritty.toml` - Removed Alacritty theme config

## Changes Made

### Package Installation
- **Previous File**: `install/development/terminal.sh` (DELETED after merge)
- **Current Status**: Terminal installation is now handled by other installation scripts
- **Change**: System now installs `ghostty` package instead of `alacritty`
- **Purpose**: Fresh installations use Ghostty as the default terminal emulator

### Configuration System  
#### Main Configuration
- **Created**: `config/ghostty/config`
- **Contents**: 
  ```
  config-file = ~/.config/omarchy/current/theme/ghostty.config
  term = xterm-256color
  font-family = CaskaydiaMono Nerd Font  
  font-size = 9
  window-padding-x = 14
  window-padding-y = 14
  window-decorations = false
  background-opacity = 0.98
  keybind = f11=toggle_fullscreen
  ```
- **Deleted**: `config/alacritty/alacritty.toml` (TOML format)

#### Screensaver Configuration  
- **Created**: `default/ghostty/screensaver.config`
- **Contents**:
  ```
  background = 000000
  cursor-color = 000000
  font-size = 18
  background-opacity = 1.0
  ```
- **Deleted**: `default/alacritty/screensaver.toml`

#### Theme Configurations (11 themes)
- **Created**: `themes/*/ghostty.config` for each theme
- **Format conversion**: TOML `[colors.primary]` sections → key=value pairs
- **Color syntax**: `background = "#24273a"` → `background = 24273a` (no # prefix)
- **Color mapping**: 
  - `[colors.normal] black = "..."` → `palette = 0=...`
  - `[colors.bright] black = "..."` → `palette = 8=...`
  - `[colors.cursor] cursor = "..."` → `cursor-color = ...`
  - `[colors.selection] background = "..."` → `selection-background = ...`
- **Deleted**: All `themes/*/alacritty.toml` files

### Script Updates
#### Terminal Launch Commands
- **Files**: `bin/omarchy-menu`, `config/hypr/bindings.conf`, `config/waybar/config.jsonc`
- **Changes**: All `alacritty` commands → `ghostty` commands
- **Example**: `alacritty --class=Wiremix -e wiremix` → `ghostty --class=Wiremix -e wiremix`

#### Font Management  
- **File**: `bin/omarchy-font-current`
- **Change**: `grep -oP 'family\s*=\s*"\K[^"]+' ~/.config/alacritty/alacritty.toml` 
  → `grep -oP 'font-family\s*=\s*\K.*' ~/.config/ghostty/config`

- **File**: `bin/omarchy-font-set`  
- **Change**: `sed -i "s/family = \".*\"/family = \"$font_name\"/g" ~/.config/alacritty/alacritty.toml`
  → `sed -i "s/font-family = .*/font-family = $font_name/g" ~/.config/ghostty/config`

#### Theme System
- **File**: `bin/omarchy-theme-set`
- **Change**: `touch "$HOME/.config/alacritty/alacritty.toml"` → `touch "$HOME/.config/ghostty/config"`

#### Screensaver System
- **Files**: `bin/omarchy-launch-screensaver`, `bin/omarchy-cmd-screensaver`, `bin/omarchy-lock-screen`
- **Changes**: 
  - `alacritty --class Screensaver --config-file ~/.local/share/omarchy/default/alacritty/screensaver.toml`
    → `ghostty --class Screensaver --config-file ~/.local/share/omarchy/default/ghostty/screensaver.config`
  - `pkill -f "alacritty --class Screensaver"` → `pkill -f "ghostty --class Screensaver"`

### Desktop Applications
#### Standard Applications
- **Files**: `applications/nvim.desktop`, `applications/Activity.desktop`, `applications/wiremix.desktop`, `applications/Docker.desktop`
- **Change**: `Exec=alacritty --class=...` → `Exec=ghostty --class=...`

#### Special Syntax Conversion
- **File**: `applications/About.desktop`  
- **Change**: `Exec=alacritty -o "font.size=9" --class=About --title=About -e bash -c 'fastfetch; read -n 1 -s'`
  → `Exec=ghostty --font-size=9 --class=About --title=About -e bash -c 'fastfetch; read -n 1 -s'`
- **Reason**: Ghostty uses `--font-size=N` instead of `-o "font.size=N"`

## Migration Required
- [x] Yes - Migration needed for existing installations
- [ ] No - Changes apply automatically via refresh/update

### Migration Details (if required)
#### Migration Script: `migrations/1755868213.sh`

**Package Management**:
```bash
if pacman -Q alacritty &>/dev/null; then
  yay -S --noconfirm ghostty
  yay -Rs --noconfirm alacritty
fi
```

**User Configuration Updates**:
```bash
# Waybar configuration
if grep -q "alacritty" ~/.config/waybar/config.jsonc; then
  sed -i 's|alacritty|ghostty|g' ~/.config/waybar/config.jsonc
  omarchy-restart-waybar
fi

# Hyprland bindings  
if grep -q "alacritty" ~/.config/hypr/bindings.conf; then
  sed -i 's|alacritty|ghostty|g' ~/.config/hypr/bindings.conf
fi

# Desktop files in user's applications directory
if grep -l "alacritty" ~/.local/share/applications/*.desktop 2>/dev/null; then
  sed -i 's|alacritty|ghostty|g' ~/.local/share/applications/*.desktop 2>/dev/null
  # Fix About.desktop font syntax
  sed -i 's|ghostty -o "font\.size=9"|ghostty --font-size=9|g' ~/.local/share/applications/About.desktop 2>/dev/null
fi
```

**Directory Management**:
```bash
# Remove old alacritty configuration
if [[ -d ~/.config/alacritty ]]; then
  rm -rf ~/.config/alacritty
fi

# Create ghostty config directory
if [[ ! -d ~/.config/ghostty ]]; then
  mkdir -p ~/.config/ghostty
fi

# Install new ghostty configuration from omarchy defaults
omarchy-refresh-config ghostty/config
```

**Migration Summary**:
1. ✅ Package replacement (alacritty → ghostty)
2. ✅ Waybar commands updated  
3. ✅ Hyprland terminal variable updated
4. ✅ Desktop files updated with syntax conversion
5. ✅ Old config directory removed, new one created
6. ✅ Fresh Ghostty config installed via omarchy-refresh-config

## Testing
- [x] Tested configuration format conversion
- [x] Tested all theme configurations converted properly 
- [x] Tested package installation update
- [x] Tested theme switching functionality
- [x] Created and tested migration for existing installations

## Notes
- **FIXED**: Configuration format properly converted from TOML to key=value syntax
- **FIXED**: All theme configurations converted with proper color syntax (removed # prefixes)
- **FIXED**: Font configuration converted to use 'font-family' instead of 'family' key  
- **FIXED**: All script references updated from alacritty to ghostty commands
- **FIXED**: Migration script (`1755868213.sh`) handles package replacement and config cleanup
- **FIXED**: Ghostty window classes updated to use dot notation (.ghostty suffix) for proper class recognition
- Configuration file is named 'config' instead of 'alacritty.toml' in the ~/.config/ghostty/ directory

## Critical Fix: Window Class Dot Notation
**Issue**: Ghostty requires dot notation for custom window classes to work properly.
**Solution**: All Ghostty classes updated to use `.ghostty` suffix:
- `--class=Omarchy` → `--class=Omarchy.ghostty`
- `--class=Wiremix` → `--class=Wiremix.ghostty`
- `--class=Impala` → `--class=Impala.ghostty` 
- `--class=Screensaver` → `--class=Screensaver.ghostty`

**Files Updated**:
- `config/waybar/config.jsonc` - 3 instances
- `bin/omarchy-menu` - 4 instances
- `bin/omarchy-launch-screensaver` - 2 instances
- `bin/omarchy-lock-screen` - 1 instance
- `bin/omarchy-cmd-screensaver` - 1 instance
- `default/hypr/apps/system.conf` - Window rules updated to match new classes

## Related Issues/PRs
[Link to any related GitHub issues or pull requests]