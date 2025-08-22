# Remove Zoom Application

## Change Information
- **Change ID**: 006
- **Change Name**: Remove Zoom application from installation
- **Date**: 2025-08-22

## Goal
Remove Zoom video conferencing application from the default package installation to reduce bloat and focus on productivity tools. Users can install Zoom manually if needed.

## Files Modified

### New Files
- None

### Modified Files  
- `install/apps/xtras.sh` - Removed zoom from package installation loop
- `default/hypr/apps/system.conf` - Removed zoom from opacity windowrule
- `APPLICATIONS.md` - Removed zoom from documentation

### Deleted Files
- `applications/xtras/Zoom.desktop` - Removed custom desktop file

## Changes Made

### Package Installation
- Removed zoom from install/apps/xtras.sh package loop
- Removed zoom from Hyprland windowrule for opacity
- Removed zoom from application documentation
- Deleted Zoom desktop file with custom scaling configuration

## Migration Required
- [ ] Yes - Migration needed for existing installations
- [x] No - Changes apply automatically via refresh/update

### Migration Details (if required)
N/A - This is a removal that doesn't require migration

## Testing
- [ ] Tested on fresh installation
- [ ] Tested on existing installation
- [ ] Tested configuration refresh
- [ ] Tested theme switching (if applicable)

## Notes
Users who need Zoom can install it manually with:
```bash
yay -S zoom
```

## Related Issues/PRs
Part of minimizing default application set