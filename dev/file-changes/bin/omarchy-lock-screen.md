# bin/omarchy-lock-screen

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal replacement (alacritty→ghostty) as per critical-changes.md  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Terminal/editor replacements as per critical-changes.md

## Diff
```diff
@@ -3,10 +3,12 @@
 # Lock the screen
 pidof hyprlock || hyprlock &
 
-# Ensure 1password is locked
-if pgrep -x "1password" >/dev/null; then
-  1password --lock &
+# Lock Bitwarden webapp when screen locks
+if pgrep -f "vault.bitwarden.com" >/dev/null; then
+  # Send Ctrl+L to Bitwarden web vault to lock it
+  # This uses hyprctl to focus the window and send the keyboard shortcut
+  hyprctl dispatch focuswindow "vault.bitwarden.com" && sleep 0.1 && hyprctl dispatch sendkey ctrl+l
 fi
 
 # Avoid running screensaver when locked
-pkill -f "alacritty --class Screensaver"
+pkill -f "ghostty --class=Screensaver"
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
