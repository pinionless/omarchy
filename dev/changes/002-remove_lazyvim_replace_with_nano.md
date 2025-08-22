# Change Documentation: Remove LazyVim and Replace Neovim with Nano

## Change Information
- **Change ID**: 002
- **Change Name**: remove_lazyvim_replace_with_nano
- **Date**: 2025-08-22

## Goal
Remove LazyVim configuration and replace Neovim with nano as the default text editor. This simplifies the editor setup and reduces complexity for users who prefer a simpler editing experience.

## Files Modified

### New Files
- `dev/changes/002-remove_lazyvim_replace_with_nano.md` - Change documentation
- `migrations/1755873062.sh` - Migration script for existing installations

### Modified Files  
- `install/development/nvim.sh` → `install/development/nano.sh` - Changed from nvim/LazyVim installation to nano
- `install.sh` - Updated to source nano.sh instead of nvim.sh
- `default/bash/envs` - Changed EDITOR from nvim to nano
- `default/bash/aliases` - Updated n() function to use nano
- `default/hypr/bindings.conf` - Changed Super+N binding from nvim to nano
- `config/hypr/bindings.conf` - Changed Super+N binding from nvim to nano
- `bin/omarchy-menu` - Changed edit_in_nvim() to edit_in_nano() and all references
- `bin/omarchy-dev-add-migration` - Changed nvim to nano

### Deleted Files
- `config/nvim/` (entire directory) - Removed LazyVim configuration
- `applications/nvim.desktop` - Removed Neovim desktop application file
- `themes/*/neovim.lua` - Removed all theme-specific Neovim configurations

## Changes Made

### Package Management
- Replaced `nvim luarocks tree-sitter-cli` installation with `nano` package
- Updated installation script from `nvim.sh` to `nano.sh`

### Configuration Files
- Removed entire `config/nvim/` LazyVim configuration directory
- Removed all theme-specific `neovim.lua` files from themes directories
- Removed `applications/nvim.desktop` file

### Scripts and Aliases
- Updated `EDITOR` environment variable from "nvim" to "nano"
- Changed `n()` function alias to use nano instead of nvim
- Updated Hyprland keybindings (Super+N) to launch nano instead of nvim
- Modified `omarchy-menu` script function from `edit_in_nvim` to `edit_in_nano`
- Updated `omarchy-dev-add-migration` script to use nano

## Migration Required
- [x] Yes - Migration needed for existing installations
- [ ] No - Changes apply automatically via refresh/update

### Migration Details (if required)
Existing installations will need a migration to:
1. Install nano package if not present
2. Remove ~/.config/nvim directory (LazyVim configs)
3. Uninstall neovim, luarocks, and tree-sitter-cli packages (optional cleanup)

The configuration refresh will handle updating environment variables, aliases, and keybindings.

## Testing
- [x] Verified script syntax
- [x] Confirmed all nvim references removed
- [x] Verified nano installation script is functional
- [x] Created migration script for existing installations
- [ ] Tested on fresh installation (pending)
- [ ] Tested on existing installation (pending)

## Notes
This change simplifies the text editing experience by using nano instead of the more complex Neovim/LazyVim setup.

## Related Issues/PRs
None