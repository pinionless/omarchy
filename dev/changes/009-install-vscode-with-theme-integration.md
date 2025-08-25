# VSCode Installation and Theme Integration

## Change Information
- **Change ID**: 009
- **Change Name**: Install VSCode with Theme Integration
- **Date**: 2025-01-23

## Goal
Add Microsoft Visual Studio Code to Omarchy with full theme integration support. VS Code will be installed via AUR, accessible via Super+V keyboard shortcut, and automatically sync with Omarchy's theme system. This provides users with a modern code editor that seamlessly integrates with the existing Omarchy aesthetic.

## Files Modified

### New Files (Currently Existing)
- `bin/omarchy-vscode-theme-handler` - Standalone script to handle VSCode theme updates when Omarchy theme changes

### Modified Files (Currently Existing)
- `install/packaging/personal.sh` - Added VSCode installation (visual-studio-code-bin) and install_vscode_theme_extensions() function that installs 9 theme extensions matching Omarchy themes
- `config/hypr/bindings.conf` - Added Super+V keyboard binding to launch VSCode
- `bin/omarchy-theme-set` - Added VSCode theme handler integration hook

### VSCode Integration Implementation
- **Package Installation**: `visual-studio-code-bin` installed via personal.sh
- **Theme Extensions**: 9 extensions installed (Catppuccin, Tokyo Night, Gruvbox, Rose Pine, Nord, Kanagawa, Everforest, Matte Black, Solarized Osaka)
- **Theme Sync**: omarchy-theme-set calls omarchy-vscode-theme-handler to sync themes automatically
- **Keyboard Access**: Super+V launches VSCode

## Changes Made

### Package Installation
- Added `visual-studio-code-bin` to AUR package installation list in personal.sh
- Restructured personal.sh with clear sections: Install Apps, Install Extensions, Install Webapps
- Moved all function definitions to end of file for better organization

### Theme Extension Integration
- Created function to install 9 VSCode theme extensions matching all Omarchy themes:
  - Catppuccin (Mocha/Latte variants)
  - Tokyo Night, Gruvbox, Rose Pine, Nord
  - Kanagawa, Everforest, Matte Black, Solarized Osaka
- Extensions install automatically after VSCode package installation
- Includes error handling for failed extension installations

### Keyboard Binding
- Added Super+V binding in Hyprland configuration to launch VSCode
- Follows existing pattern: `bindd = SUPER, V, VS Code, exec, uwsm app -- code`
- Positioned logically between text editor (Super+N) and activity monitor (Super+T)

### Theme System Integration
- Created standalone `omarchy-vscode-theme-handler` script for upstream-safe modifications
- Script maps Omarchy theme names to corresponding VSCode theme names
- Updates VSCode settings.json with appropriate `workbench.colorTheme` setting
- Handles both existing settings files and creation of new ones
- Added minimal hook (1 line) to omarchy-theme-set to call theme handler

### Architecture Benefits
- **Upstream-Safe**: Minimal modifications to core files (only 1 line added to omarchy-theme-set)
- **Self-Contained**: VSCode functionality isolated in separate handler script
- **Robust**: Graceful handling of missing VSCode installation or jq dependency
- **Maintainable**: Clean section organization in personal.sh

## Migration Required
- [ ] Yes - Migration needed for existing installations
- [x] No - Changes apply automatically via refresh/update

### Migration Details (if required)
N/A - All changes are additive and will be applied on next system update or fresh installation.

## Testing
- [x] Tested on fresh installation
- [ ] Tested on existing installation  
- [x] Tested configuration refresh
- [x] Tested theme switching (if applicable)

## Notes
- VSCode theme extensions are installed during the extension installation phase
- Theme switching is instant in VSCode (no restart required)
- Falls back gracefully if jq is not available (uses sed for JSON modification)
- Nano remains the default text editor (Super+N unchanged)
- All VSCode functionality is conditional on VSCode being installed (safe for bare installations)

## Related Issues/PRs
- Addresses TICKET-004: Install VS Code
- Related to personal apps extension system (change 006)
- Follows theme integration patterns established in core Omarchy themes