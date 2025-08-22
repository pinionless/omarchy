# Add New Productivity Webapps

## Change Information
- **Change ID**: 007
- **Change Name**: Add new productivity webapps
- **Date**: 2025-08-22

## Goal
Add a curated set of productivity-focused webapps to replace the removed original applications. Focus on AI development tools, productivity applications, and essential Google services that align with development workflows.

## Files Modified

### Modified Files  
- `install/apps/personal.sh` - Added 4 productivity-focused webapps (for easier upstream sync)
- `config/hypr/bindings.conf` - Added keyboard shortcuts for new webapps

## Changes Made

### Web Applications Added
  - Google AI Studio (https://aistudio.google.com) - AI development platform
  - Google Calendar (https://calendar.google.com) - Calendar and scheduling
  - Google Sheets (https://sheets.google.com) - Spreadsheet application
  - Claude.ai (https://claude.ai) - AI assistant

### Keyboard Bindings Added
- **Super+A**: Google AI Studio
- **Super+C**: Google Calendar  
- **Super+E**: Google Sheets
- **Super+Y**: Claude.ai

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

**Implementation**: Custom productivity webapps are added to personal.sh for easier upstream syncing:
- Main webapps.sh keeps only essential core webapps (WhatsApp, Google Contacts)
- Personal webapps.sh contains the custom productivity additions
- This separation allows upstream webapp changes to merge cleanly without conflicts

## Related Issues/PRs
Second part of webapp replacement - addition of new productivity-focused webapps