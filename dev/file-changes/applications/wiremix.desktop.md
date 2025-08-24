# applications/wiremix.desktop

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal command must use `ghostty` instead of `alacritty`  
**SAFE TO UPDATE**: All other parts of the desktop file can accept upstream changes  
**CONFLICT RESOLUTION**: If upstream changes the Exec line, adapt their changes but keep `ghostty`

## Change Summary
Replaced Alacritty terminal with Ghostty terminal for Wiremix audio settings

## Diff
```diff
-Exec=alacritty --class=Wiremix --title=Wiremix -e wiremix
+Exec=ghostty --class=Wiremix --title=Wiremix -e wiremix
```

## Reasoning
Part of the system-wide terminal replacement feature where Alacritty was replaced with Ghostty throughout the system.