# Add Personal Apps Extension System

## Change Information
- **Change ID**: 008
- **Change Name**: Add personal apps extension system
- **Date**: 2025-08-22

## Goal
Create a sync-friendly way to add personal applications without modifying upstream files. This allows easy merging of upstream changes while maintaining custom app installations.

## Files Modified

### New Files
- `install/apps/personal.sh` - Template for personal application installations

### Modified Files  
- `install/apps/xtras.sh` - Added hook to source personal.sh if it exists

### Deleted Files
- None

## Changes Made

### Extension System
- Created `install/apps/personal.sh` with template for adding personal apps
- Added conditional sourcing hook in `xtras.sh`
- Follows same patterns as existing installation scripts
- Respects `OMARCHY_BARE` environment variable

### Benefits for Fork Maintenance
- Personal apps completely isolated from upstream files
- Hook line easy to re-add if lost during merge conflicts
- No modification of core installation logic
- Template provides examples for package installation patterns

## Migration Required
- [ ] Yes - Migration needed for existing installations
- [x] No - Changes apply automatically via refresh/update

### Migration Details (if required)
N/A - Extension system is additive

## Testing
- [ ] Tested on fresh installation
- [ ] Tested on existing installation
- [ ] Tested configuration refresh
- [ ] Tested theme switching (if applicable)

## Notes
To add personal applications:
1. Edit `install/apps/personal.sh`
2. Add package names using the same patterns as `xtras.sh`
3. Run fresh installation or `omarchy-update` to install

Example usage:
```bash
# In install/apps/personal.sh
yay -S --noconfirm --needed \
  my-favorite-app \
  another-tool
```

## Related Issues/PRs
Supports easier fork maintenance and upstream syncing