# bin/omarchy-cmd-screensaver

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Must kill ghostty screensaver process instead of alacritty  
**SAFE TO UPDATE**: Screensaver control logic can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep ghostty process name, merge other functionality

## Change Summary
Updated screensaver control to kill Ghostty screensaver instead of Alacritty screensaver

## Diff
```diff
-        pkill -f "alacritty --class Screensaver" 2>/dev/null
+        pkill -f "ghostty --class=Screensaver" 2>/dev/null
```

## Reasoning
Part of system-wide terminal replacement (change 001) - screensaver control needs to kill ghostty screensaver processes instead of alacritty screensaver processes.