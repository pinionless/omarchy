# Fix Zsh Installation Integration

## Change Information
- **Change ID**: 010
- **Change Name**: fix-zsh-installation-integration
- **Date**: 2025-01-24

## Goal
Fix the zsh installation process to properly integrate zsh configuration and ensure both user and root shells are correctly set during Omarchy installation.

## Files Modified

### Modified Files  
- `install/packaging/personal.sh` - Fixed shell change command to use sudo and target both user and root
- `install/config/config.sh` - Added zshrc copying alongside bashrc

## Changes Made

### Shell Configuration
- Fixed `chsh -s $(which zsh)` to `sudo chsh -s $(which zsh) $USER` to resolve permission errors
- Added `sudo chsh -s $(which zsh) root` to set zsh as root's default shell
- Improved error handling and user feedback messages

### Configuration Files
- Added `cp ~/.local/share/omarchy/default/zshrc ~/.zshrc` to config.sh
- Ensures zsh users get proper configuration file during installation
- Matches existing bashrc handling pattern

## Migration Required
- [x] Yes - Migration needed for existing installations
- [ ] No - Changes apply automatically via refresh/update

### Migration Details (if required)
For users who already have zsh installed but missing .zshrc:
```bash
# Copy zshrc if missing and zsh is installed
if command -v zsh &> /dev/null && [ ! -f ~/.zshrc ]; then
    cp ~/.local/share/omarchy/default/zshrc ~/.zshrc
fi

# Fix shell for current user and root if needed
if [ "$SHELL" != "$(which zsh)" ] && command -v zsh &> /dev/null; then
    sudo chsh -s $(which zsh) $USER
    sudo chsh -s $(which zsh) root
fi
```

## Testing
- [x] Tested on fresh installation
- [ ] Tested on existing installation  
- [x] Tested configuration refresh
- [ ] Tested theme switching (if applicable)

## Notes
- This change ensures zsh users get the full comprehensive zsh experience during installation
- Both regular user and root will use zsh, providing consistency across privilege levels
- The zshrc file contains all the advanced features like autocomplete, themes, and custom functions

## Related Issues/PRs
- Addresses installation error where `chsh -s $(which zsh)` failed due to missing sudo
- Completes the comprehensive zsh integration started in previous changes