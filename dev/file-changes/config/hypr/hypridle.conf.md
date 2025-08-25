# config/hypr/hypridle.conf

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Keybinding and app rule updates for replaced applications

## Diff
```diff
@@ -1,5 +1,5 @@
 general {
-    lock_cmd = omarchy-lock-screen                         # lock screen and 1password
+    lock_cmd = omarchy-lock-screen                         # lock screen
     before_sleep_cmd = loginctl lock-session               # lock before suspend.
     after_sleep_cmd = hyprctl dispatch dpms on             # to avoid having to press a key twice to turn on the display.
     on_unlock_cmd = omarchy-restart-waybar                 # prevent stacking of waybar when waking
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
