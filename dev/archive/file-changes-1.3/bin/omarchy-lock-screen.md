# bin/omarchy-lock-screen

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Must kill ghostty screensaver and use Bitwarden locking instead of 1Password  
**SAFE TO UPDATE**: Other lock screen functionality can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep ghostty and Bitwarden references, merge other functionality

## Change Summary
Two changes: terminal replacement (ghostty screensaver) and password manager replacement (1Password→Bitwarden)

## Diff 1 - Terminal Replacement (alacritty → ghostty)
```diff
-pkill -f "alacritty --class Screensaver"
+pkill -f "ghostty --class=Screensaver"
```

## Diff 2 - Password Manager Replacement (1Password → Bitwarden)
```diff
-# Ensure 1password is locked
-if pgrep -x "1password" >/dev/null; then
-  1password --lock &
+# Lock Bitwarden webapp when screen locks
+if pgrep -f "vault.bitwarden.com" >/dev/null; then
+  # Send Ctrl+L to Bitwarden web vault to lock it
+  # This uses hyprctl to focus the window and send the keyboard shortcut
+  hyprctl dispatch focuswindow "vault.bitwarden.com" && sleep 0.1 && hyprctl dispatch sendkey ctrl+l
```

## Reasoning
- **Diff 1**: Part of system-wide terminal replacement (change 001) - stop ghostty screensaver instead of alacritty
- **Diff 2**: Part of security integration with Bitwarden (change 008) - replaced 1Password CLI locking with Bitwarden web vault locking via keyboard shortcut