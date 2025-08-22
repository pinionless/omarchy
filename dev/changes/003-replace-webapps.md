# Change Documentation: Replace Webapps

## Change Information
- **Change ID**: 003
- **Change Name**: replace-webapps
- **Date**: 2025-08-22

## Goal
Replace the current collection of web applications with a more productivity-focused set. Remove social media, entertainment, and non-essential apps, and add Google productivity tools and AI assistance applications that better align with development and professional workflows.

## Files Modified

### Modified Files  
- `install/apps/webapps.sh` - Removed 9 webapps and added 4 new productivity-focused webapps
- `config/hypr/bindings.conf` - Updated keyboard shortcuts to match new webapp set

## Changes Made

### Web Applications
- **Removed webapps**:
  - HEY (email service)
  - Basecamp (project management)
  - Google Photos (photo storage)
  - Google Messages (SMS service)
  - ChatGPT (AI assistant)
  - YouTube (video platform)
  - GitHub (code hosting)
  - X/Twitter (social media)
  - Figma (design tool)
  - Discord (communication)

- **Added webapps**:
  - Google AI Studio (https://aistudio.google.com) - AI development platform
  - Google Calendar (https://calendar.google.com) - Calendar and scheduling
  - Google Sheets (https://sheets.google.com) - Spreadsheet application
  - Claude.ai (https://claude.ai) - AI assistant

### Keyboard Bindings
- **Updated bindings**:
  - Super+A: ChatGPT → Google AI Studio
  - Super+C: HEY Calendar → Google Calendar  
  - Super+E: HEY Email → Google Sheets
  - Super+Y: YouTube → Claude.ai
- **Removed bindings**:
  - Super+X: X/Twitter
  - Super+Shift+X: X Post
  - Super+Alt+G: Google Messages

## Migration Required
- [ ] Yes - Migration needed for existing installations
- [x] No - Changes apply automatically via refresh/update

## Testing
- [ ] Tested on fresh installation
- [ ] Tested on existing installation
- [ ] Tested configuration refresh
- [ ] Tested theme switching (if applicable)

## Notes
This change focuses the webapp collection on productivity and AI tools while removing entertainment and social applications. Users who need the removed applications can still access them via regular web browsers.

The new webapp selection provides:
- AI development tools (Google AI Studio, Claude.ai)
- Productivity tools (Google Calendar, Google Sheets)
- Maintains only essential Google services (Contacts and WhatsApp remain)

## Related Issues/PRs
N/A