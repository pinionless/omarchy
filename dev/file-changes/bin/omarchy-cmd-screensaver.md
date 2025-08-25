# bin/omarchy-cmd-screensaver

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal replacement (alacritty→ghostty) as per critical-changes.md  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Terminal/editor replacements as per critical-changes.md

## Diff
```diff
@@ -9,7 +9,7 @@
   while pgrep -x tte >/dev/null; do
     if read -n 1 -t 0.01; then
       pkill -x tte 2>/dev/null
-      pkill -f "alacritty --class Screensaver" 2>/dev/null
+      pkill -f "ghostty --class=Screensaver" 2>/dev/null
       exit 0
     fi
   done
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
