# bin/omarchy-install-dropbox

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: This file must remain deleted - do not restore it  
**SAFE TO UPDATE**: N/A - file is intentionally removed  
**CONFLICT RESOLUTION**: If upstream adds this file back, delete it again

## Change Summary
Deleted Dropbox installer script as part of service streamlining

## Diff
```diff
-#!/bin/bash
-
-echo "Installing all dependencies..."
-yay -S --noconfirm --needed \
-  dropbox dropbox-cli libappindicator-gtk3 python-gpgme nautilus-dropbox
-
-echo "Starting Dropbox..."
-uwsm app -- dropbox-cli start &>/dev/null &
-echo "See Dropbox icon behind   hover tray in top right and right-click for setup."
```

## Reasoning
Removed as part of bloat removal (change 004) - Dropbox cloud storage not needed for minimal development-focused system. Also removed corresponding menu option from omarchy-menu.