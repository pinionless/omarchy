# Add New Productivity Webapps

## Change Information
- **Change ID**: 007
- **Change Name**: Add new productivity webapps
- **Date**: 2025-08-22

## Goal
Add a curated set of productivity-focused webapps to replace the removed original applications. Focus on AI development tools, productivity applications, and essential Google services that align with development workflows.

## Files Modified

### Modified Files (Currently Existing)
- `install/packaging/personal.sh` - Added 5 productivity webapps in SECTION 3: INSTALL WEBAPPS
- `config/hypr/bindings.conf` - Added keyboard shortcuts: Super+G (Google AI Studio), Super+C (Google Calendar), Super+S (Google Sheets), Super+Y (Claude), Super+B (Bitwarden)
- `bin/omarchy-lock-screen` - Updated to lock Bitwarden vault instead of 1Password when screen locks

### Webapps Added (in personal.sh)
- **Google AI Studio** (https://aistudio.google.com) - Super+G binding
- **Google Calendar** (https://calendar.google.com) - Super+C binding  
- **Google Sheets** (https://sheets.google.com) - Super+S binding
- **Claude** (https://claude.ai) - Super+Y binding
- **Bitwarden** (https://vault.bitwarden.com) - Super+B binding

## Changes Made

### Web Applications Added
  - Google AI Studio (https://aistudio.google.com) - AI development platform
  - Google Calendar (https://calendar.google.com) - Calendar and scheduling
  - Google Sheets (https://sheets.google.com) - Spreadsheet application
  - Claude.ai (https://claude.ai) - AI assistant
  - Bitwarden (https://vault.bitwarden.com) - Password manager vault

### Keyboard Bindings Added
- **Super+A**: Google AI Studio
- **Super+C**: Google Calendar  
- **Super+E**: Google Sheets
- **Super+Y**: Claude.ai
- **Super+/**: Bitwarden vault (replaces 1Password)

## Migration Required
- [ ] Yes - Migration needed for existing installations
- [x] No - Changes apply automatically via refresh/update

## Testing
- [ ] Tested on fresh installation
- [ ] Tested on existing installation
- [ ] Tested configuration refresh
- [ ] Tested theme switching (if applicable)

## Notes
This change adds curated productivity webapps to replace the removed originals. The selection focuses on:
- **AI development tools**: Google AI Studio, Claude.ai
- **Productivity tools**: Google Calendar, Google Sheets
- **Security tools**: Bitwarden password manager vault

**Implementation**: Custom productivity webapps are added to personal.sh for easier upstream syncing:
- Main webapps.sh keeps only essential core webapps (WhatsApp, Google Contacts)
- Personal webapps.sh contains the custom productivity additions
- This separation allows upstream webapp changes to merge cleanly without conflicts

**Bitwarden Integration**: 
- Replaces deleted 1Password functionality completely
- Uses Super+/ keyboard shortcut (same as previous 1Password binding)
- Integrates with lock screen to automatically lock Bitwarden vault using Ctrl+L shortcut
- Process detection works via URL pattern matching in browser processes

## Related Issues/PRs
Second part of webapp replacement - addition of new productivity-focused webapps