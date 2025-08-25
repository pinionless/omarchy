# bin/omarchy-launch-screensaver

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal replacement (alacritty→ghostty) as per critical-changes.md  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Terminal/editor replacements as per critical-changes.md

## Diff
```diff
@@ -6,7 +6,7 @@
 fi
 
 # Exit early if screensave is already running
-pgrep -f "alacritty --class Screensaver" && exit 0
+pgrep -f "ghostty --class=Screensaver" && exit 0
 
 # Allow screensaver to be turned off but also force started
 if [[ -f ~/.local/state/omarchy/toggles/screensaver-off ]] && [[ $1 != "force" ]]; then
@@ -18,8 +18,8 @@
 for m in $(hyprctl monitors -j | jq -r '.[] | .name'); do
   hyprctl dispatch focusmonitor $m
   hyprctl dispatch exec -- \
-    alacritty --class Screensaver \
-    --config-file ~/.local/share/omarchy/default/alacritty/screensaver.toml \
+    ghostty --class=Screensaver \
+    --config-file=~/.local/share/omarchy/default/ghostty/screensaver.config \
     -e omarchy-cmd-screensaver
 done
 
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
