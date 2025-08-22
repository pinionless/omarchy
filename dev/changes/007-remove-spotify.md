# Remove Spotify Application

## Change Information
- **Change ID**: 007
- **Change Name**: Remove Spotify music streaming application
- **Date**: 2025-08-22

## Goal
Remove Spotify music streaming application from the default package installation to further minimize the application set and focus on core development tools. Users can install Spotify manually if needed.

## Files Modified

### New Files
- None

### Modified Files  
- `install/apps/xtras.sh` - Remove spotify from package installation loop
- `config/hypr/bindings.conf` - Remove Super+M spotify binding
- `APPLICATIONS.md` - Remove spotify from documentation

### Deleted Files
- None

## Changes Made

### Package Installation
- Removed spotify from install/apps/xtras.sh package loop
- Removed Super+M keyboard binding for Spotify
- Removed spotify from application documentation

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
Users who need Spotify can install it manually with:
```bash
yay -S spotify
```

## Related Issues/PRs
Part of minimizing default application set