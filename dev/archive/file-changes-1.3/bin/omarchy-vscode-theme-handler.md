# bin/omarchy-vscode-theme-handler

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: This file is required for VSCode theme integration  
**SAFE TO UPDATE**: VSCode theme mapping and logic can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep this file, merge any upstream enhancements

## Change Summary
Added VSCode theme integration handler to automatically sync VSCode theme when Omarchy theme changes

## Diff
```diff
+#!/bin/bash
+
+# omarchy-vscode-theme-handler: Updates VSCode theme when Omarchy theme changes
+# This script is called by omarchy-theme-set to keep upstream modifications minimal
+# Created for Ticket 004 - Install VS Code
+
+omarchy_update_vscode_theme() {
+  local theme_name="$1"
+  local vscode_settings="$HOME/.config/Code/User/settings.json"
+  local vscode_theme=""
+  
+  # Only proceed if VSCode is installed
+  if ! command -v code &> /dev/null; then
+    return 0
+  fi
+  
+  case "$theme_name" in
+    "catppuccin") vscode_theme="Catppuccin Mocha" ;;
+    "catppuccin-latte") vscode_theme="Catppuccin Latte" ;;
+    "tokyo-night") vscode_theme="Tokyo Night" ;;
+    [... full theme mapping script ...]
```

## Reasoning
Created as part of VSCode theme integration (change 009) - provides automatic VSCode theme synchronization when Omarchy theme changes, keeping core system modifications minimal by isolating VSCode functionality in a separate handler script.