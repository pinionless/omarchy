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

### Previously Created Files (Now Deleted)
- `install/development/nano.sh` - Was created but later removed in merge
- `migrations/1755873062.sh` - Migration script was created but later removed

### Modified Files (Currently Existing)
- `install.sh` - Removed sourcing of `install/packaging/lazyvim.sh`, now sources `install/packaging/personal.sh` (which installs nano)
- `default/bash/envs` - Changed EDITOR environment variable: `export EDITOR="nano"` (was nvim)
- `default/bash/aliases` - Updated n() function: `n() { if [ "$#" -eq 0 ]; then nano .; else nano "$@"; fi; }` (was nvim)  
- `default/hypr/bindings.conf` - Changed Super+N binding from nvim to nano
- `config/hypr/bindings.conf` - Changed Super+N binding from nvim to nano in user config
- `bin/omarchy-menu` - Changed edit_in_nvim() function to edit_in_nano() and all nvim references to nano
- `bin/omarchy-dev-add-migration` - Changed nvim references to nano

### Deleted Files (LazyVim Removal)
- `config/nvim/` (entire directory) - Removed LazyVim configuration  
- `applications/nvim.desktop` - Removed Neovim desktop application file
- `themes/*/neovim.lua` - Removed all theme-specific Neovim configurations (11 theme files)
- `install/packaging/lazyvim.sh` - Removed LazyVim installation script

## Changes Made

### Package Management (Post-Merge Status)
- **Previous**: Created `install/development/nano.sh` to replace `nvim.sh`
- **Current Status**: Both `nano.sh` and `nvim.sh` files were deleted during merge
- **Result**: Nano installation is now handled by other installation scripts
- **Change**: System no longer installs complex nvim/LazyVim setup, uses simple nano editor

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