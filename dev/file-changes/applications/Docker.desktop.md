# applications/Docker.desktop

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal command must use `ghostty` instead of `alacritty`  
**SAFE TO UPDATE**: All other parts of the desktop file can accept upstream changes  
**CONFLICT RESOLUTION**: If upstream changes the Exec line, adapt their changes but keep `ghostty`

## Change Summary
Replaced Alacritty terminal with Ghostty terminal for LazyDocker container management

## Diff
```diff
-Exec=alacritty --class=Docker --title=Docker -e lazydocker
+Exec=ghostty --class=Docker --title=Docker -e lazydocker
```

## Reasoning
Part of the system-wide terminal replacement feature where Alacritty was replaced with Ghostty throughout the system.