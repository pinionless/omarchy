# Remove Original Webapps

## Change Information
- **Change ID**: 005
- **Change Name**: Remove original webapps
- **Date**: 2025-08-22

## Goal
Remove the original collection of webapps that came with Omarchy upstream. These included social media, entertainment, and business applications that don't align with a minimal development-focused setup.

## Files Modified

### Modified Files (Currently Existing)
- `install/packaging/webapps.sh` - Removed 9 original webapps, kept only WhatsApp and Google Contacts
- `config/hypr/bindings.conf` - Removed keyboard shortcuts for deleted webapps (Super+E, Super+C, Super+Alt+G, Super+A, Super+Y, Super+X, Super+Shift+X)

### Webapps Removed From Core Installation
The following webapps were removed from `install/packaging/webapps.sh`:
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
- Zoom (video conferencing)

### Webapps Kept in Core Installation
- WhatsApp (messaging)
- Google Contacts (contact management)

## Changes Made

### Web Applications Removed
- **HEY** (email service) - Had Super+E and Super+C bindings
- **Basecamp** (project management)
- **Google Photos** (photo storage)
- **Google Messages** (SMS service) - Had Super+Alt+G binding
- **ChatGPT** (AI assistant) - Had Super+A binding
- **YouTube** (video platform) - Had Super+Y binding
- **GitHub** (code hosting)
- **X/Twitter** (social media) - Had Super+X and Super+Shift+X bindings
- **Figma** (design tool)
- **Discord** (communication)

### Keyboard Bindings Removed
- Super+X: X/Twitter
- Super+Shift+X: X Post
- Super+Alt+G: Google Messages

### Core Webapps Kept
- **WhatsApp** - Essential communication (Super+Shift+G)
- **Google Contacts** - Essential productivity tool

## Migration Required
- [ ] Yes - Migration needed for existing installations
- [x] No - Changes apply automatically via refresh/update

## Testing
- [ ] Tested on fresh installation
- [ ] Tested on existing installation
- [ ] Tested configuration refresh
- [ ] Tested theme switching (if applicable)

## Notes
This removal clears out entertainment, social media, and non-essential business applications from the default installation. The focus shifts to minimal, essential tools only.

Users who need the removed applications can still access them via regular web browsers without the webapp integration.

## Related Issues/PRs
First part of webapp replacement - removal of originals