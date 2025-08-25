# bin/omarchy-install-tailscale

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: This file must remain deleted - do not restore it  
**SAFE TO UPDATE**: N/A - file is intentionally removed  
**CONFLICT RESOLUTION**: If upstream adds this file back, delete it again

## Change Summary
Deleted Tailscale installer script as part of service streamlining

## Diff
```diff
-#!/bin/bash
-
-curl -fsSL https://tailscale.com/install.sh | sh
-
-echo -e "\nStarting Tailscale..."
-sudo tailscale up --accept-routes
-
-omarchy-webapp-install "Tailscale" "https://login.tailscale.com/admin/machines" https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/tailscale-light.png
```

## Reasoning
Removed as part of bloat removal (change 004) - Tailscale VPN service not needed for minimal development-focused system. Also removed corresponding menu option from omarchy-menu.