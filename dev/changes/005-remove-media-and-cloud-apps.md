# Change Documentation: Remove Media and Cloud Applications

## Change Information
- **Change ID**: 005
- **Change Name**: remove-media-and-cloud-apps
- **Date**: 2025-08-22

## Goal
Remove heavy media editing applications, cloud storage services, and optional applications that are not essential for a minimal web development environment. This reduces system bloat and installation time while maintaining core functionality.

## Files Modified

### Modified Files  
- `install/desktop/desktop.sh` - Remove OBS, Kdenlive, xournalpp
- `install/apps/xtras.sh` - Remove 1password and typora installations

### Deleted Files
- `bin/omarchy-install-dropbox` - Remove Dropbox installation script

## Changes Made

### Media & Creative Applications
- **Removed**:
  - obs-studio (streaming and recording software)
  - kdenlive (video editing software) 
  - xournalpp (PDF annotation and note-taking)
  - typora (markdown editor)

### Cloud & Security Applications
- **Removed**:
  - Dropbox sync (dropbox, dropbox-cli, libappindicator-gtk3, python-gpgme)
  - 1password-beta 1password-cli (password manager)
  - Tailscale VPN service

### Installation Scripts
- **Removed**:
  - `bin/omarchy-install-dropbox` - Complete script removal

## Migration Required
- [ ] Yes - Migration needed for existing installations
- [x] No - Changes apply automatically via refresh/update

## Testing
- [ ] Tested on fresh installation
- [ ] Tested on existing installation
- [ ] Tested configuration refresh
- [ ] Tested theme switching (if applicable)

## Notes
This change focuses the system on core development tools while removing:
- Heavy media editing applications (OBS, Kdenlive)
- Cloud storage integration (Dropbox)
- Optional security tools (1password, Tailscale)
- Specialized editors (Typora, xournalpp)

Users who need these applications can install them manually:
- `yay -S obs-studio kdenlive xournalpp`
- `yay -S dropbox dropbox-cli`
- Manual Tailscale installation via their installer
- `yay -S 1password-beta typora`

This results in a cleaner, faster installation focused on web development essentials.

## Related Issues/PRs
N/A