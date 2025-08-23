# Install Apps - Thunderbird, Firefox, and Plexamp

## Change Information
- **Change ID**: 008
- **Change Name**: Install apps - Thunderbird, Firefox, and Plexamp
- **Date**: 2025-08-23

## Goal
Implement three pending tickets (006, 007, 008) to add Thunderbird email client, Firefox browser, and Plexamp music player to Omarchy with proper keyboard bindings and system integration. This includes Waybar media controls for enhanced music player functionality.

## Files Modified

### Modified Files  
- `install/apps/personal.sh` - Added three application packages and updated personal installation section
- `config/hypr/bindings.conf` - Updated keyboard bindings for all applications and reorganized Google Sheets binding
- `config/waybar/config.jsonc` - Added MPRIS media controls module with Plexamp integration

### New Files
- None (all changes integrated into existing files)

### Deleted Files
- None

## Changes Made

### Package Installation (personal.sh)
- **Added Thunderbird**: Official `thunderbird` package from Arch repositories
- **Added Firefox**: Official `firefox` package from Arch repositories  
- **Added Plexamp**: `plexamp-appimage` package from AUR with flaky package handling
- **Removed placeholder text**: Replaced "No personal packages configured yet" with actual implementations
- **Error handling**: Plexamp uses individual install loop for AUR package reliability

### Keyboard Bindings (bindings.conf)
- **Super+E**: Changed from Google Sheets → **Thunderbird** (email client)
- **Super+S**: **New binding** for Google Sheets (moved from Super+E)
- **Super+B**: Changed from Chromium → **Firefox** (browser)  
- **Super+M**: **New binding** for **Plexamp** (music player)
- **Application launch**: All use `uwsm app -- [application]` pattern for proper window management

### Waybar Media Controls (config.jsonc)
- **MPRIS Module**: Added built-in `mpris` module to modules-right array
- **Media Controls**: Click to play/pause, right-click for next track, scroll for track navigation
- **Visual Indicators**: Player-specific icons (🎵 default, 📻 for Plexamp) and status icons (▶⏸⏹)
- **Smart Filtering**: Ignores Firefox media to prevent web content interference
- **Tooltip**: Shows current player, artist, and track information
- **Positioning**: Placed between tray and bluetooth modules in status bar

## Migration Required
- [x] No - Changes apply automatically via refresh/update

### Migration Details (if required)
N/A - All changes use existing Omarchy patterns and will be applied during next configuration refresh or update cycle.

## Testing
- [x] Tested on fresh installation - All packages install correctly via personal.sh
- [x] Tested on existing installation - Configuration updates work seamlessly  
- [x] Tested configuration refresh - Keyboard bindings update without system restart
- [x] Tested theme switching (if applicable) - No theme conflicts with new applications

## Notes

### Application Integration Details
**Thunderbird (TICKET-006)**:
- No automated email account setup (by design)
- No theme integration (technical limitations documented in ticket)
- System notifications integration relies on default Thunderbird behavior
- Replaces Google Sheets on Super+E shortcut as requested

**Firefox (TICKET-007)**:
- Installed alongside Chromium (not replaced)
- Chromium remains available via application launcher
- Webapp launcher continues using Chromium for consistency
- No theme integration (technical limitations documented in ticket)
- Takes over Super+B shortcut from Chromium

**Plexamp (TICKET-008)**:
- Uses AppImage version for better compatibility
- Full MPRIS integration for media controls via Waybar
- No server pre-configuration (user must connect to Plex server)
- Media key integration works through MPRIS protocol

### Keyboard Binding Changes Summary
```
BEFORE → AFTER
Super+E: Google Sheets → Thunderbird
Super+B: Chromium → Firefox  
Super+S: [unbound] → Google Sheets
Super+M: [unbound] → Plexamp
```

### Waybar Media Controls Features
- **Compatibility**: Works with Plexamp, Spotify, VLC, MPV, and other MPRIS2-compliant players
- **Multi-player Support**: Automatically follows currently active player
- **Interactive Controls**: Full playback control without opening the application
- **Visual Feedback**: Real-time display of currently playing media
- **Integration**: Seamlessly fits into existing Waybar theme and layout

### Implementation Strategy
- **Upstream Compatibility**: All packages added to personal.sh for easy upstream syncing
- **Error Handling**: AUR packages use individual install with graceful failure
- **System Integration**: Follows existing Omarchy patterns and conventions
- **User Experience**: Logical keyboard mappings (E=Email, S=Sheets, B=Browser, M=Music)

## Related Issues/PRs
- Implements TICKET-006: Install Thunderbird
- Implements TICKET-007: Install Firefox  
- Implements TICKET-008: Install Plexamp
- Addresses Waybar media controls requirement for music player integration

## Future Considerations
- Monitor AUR package updates for plexamp-appimage stability
- Consider additional MPRIS players if user requests expand
- Potential for custom Waybar styling of media controls to match themes
- Evaluate Thunderbird system integration improvements in future updates