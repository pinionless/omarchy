# Remove Bloat Applications

## Change Information
- **Change ID**: 004
- **Change Name**: Remove bloat applications
- **Date**: 2025-08-22

## Goal
Remove unnecessary applications to create a minimal, focused development environment. This includes media editing tools, cloud services, video conferencing, music streaming, and other non-essential applications that add bloat to the system.

## Files Modified

### New Files
- None

### Modified Files (Currently Existing)
- `default/hypr/apps/system.conf` - Removed window rules and opacity settings for bloat applications (zoom, spotify, etc.)
- `config/hypr/bindings.conf` - Removed Super+M spotify binding and other bloat app keybindings

### Deleted Files (Applications/Scripts Removed)
- `bin/omarchy-install-dropbox` - Dropbox installation script removed
- `bin/omarchy-install-tailscale` - Tailscale installation script removed  
- `applications/typora.desktop` - Typora desktop file removed
- `applications/hidden/dropbox.desktop` - Hidden Dropbox desktop file removed

### Applications Removed From Installation
The following applications are no longer installed by Omarchy:
- **Media/Creative**: obs-studio, kdenlive, xournalpp, typora
- **Cloud/Security**: dropbox, dropbox-cli, 1password, tailscale  
- **Communication/Entertainment**: zoom, spotify, discord

## Changes Made

### Media & Creative Applications Removed
- **obs-studio** - Streaming and recording software
- **kdenlive** - Video editing software
- **xournalpp** - PDF annotation and note-taking
- **typora** - Markdown editor

### Cloud & Security Applications Removed
- **Dropbox** - Cloud storage sync (dropbox, dropbox-cli, libappindicator-gtk3, python-gpgme)
- **1password** - Password manager (1password-beta, 1password-cli)
- **Tailscale** - VPN service

### Communication & Entertainment Removed
- **zoom** - Video conferencing application
- **spotify** - Music streaming application

### Configuration Changes
- Removed zoom from Hyprland opacity windowrule
- Removed Super+M keyboard binding for Spotify
- Removed all references from documentation

## Migration Required
- [x] Yes - Migration needed for existing installations (for media/cloud apps)
- [x] No - Changes apply automatically via refresh/update (for zoom/spotify)

### Migration Details (if required)
Migration `1755886671.sh` will:
- Identify installed applications that were removed from setup
- Provide removal instructions for user choice (doesn't auto-remove)
- Clean up configuration directories for removed applications
- Stop and disable Tailscale and Dropbox services if running
- Inform user about the new minimal focus

## Testing
- [ ] Tested on fresh installation
- [ ] Tested on existing installation
- [ ] Tested configuration refresh
- [ ] Tested theme switching (if applicable)

## Notes
This comprehensive cleanup removes applications in several categories:

**Media & Creative Tools:**
- Heavy applications suitable for content creation but not essential for development

**Cloud & Security Services:**
- Services that require ongoing setup and may not be needed by all users

**Communication & Entertainment:**
- Applications that can be installed manually if needed

**Manual Installation Available:**
Users who need these applications can install them manually:
```bash
# Media tools
yay -S obs-studio kdenlive xournalpp typora

# Communication
yay -S zoom spotify

# Cloud & Security
yay -S dropbox dropbox-cli 1password-beta
# Tailscale via their installer
```

This results in a much cleaner, faster installation focused on core development tools.

## Related Issues/PRs
Consolidation of changes 005, 006, and 007 for better organization