# bin/omarchy-launch-screensaver

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Must use ghostty commands and config file instead of alacritty  
**SAFE TO UPDATE**: Screensaver launch logic can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep ghostty references, merge other functionality

## Change Summary
Updated screensaver launcher to use Ghostty terminal instead of Alacritty

## Diff
```diff
-pgrep -f "alacritty --class Screensaver" && exit 0
+pgrep -f "ghostty --class=Screensaver" && exit 0

-    alacritty --class Screensaver \
-    --config-file ~/.local/share/omarchy/default/alacritty/screensaver.toml \
+    ghostty --class=Screensaver \
+    --config-file ~/.local/share/omarchy/default/ghostty/screensaver.config \
```

## Reasoning
Part of system-wide terminal replacement (change 001) - screensaver system needs to launch ghostty instead of alacritty, use ghostty config file, and check for ghostty processes.