# install/development/terminal.sh

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Must install `ghostty` instead of `alacritty`  
**SAFE TO UPDATE**: Other terminal development tools can accept upstream additions  
**CONFLICT RESOLUTION**: Keep ghostty package, merge other terminal utilities

## Change Summary
Changed terminal package installation from alacritty to ghostty

## Diff
```diff
-  alacritty
+  ghostty
```

## Reasoning
Part of system-wide terminal replacement (change 001) - replaced Alacritty with Ghostty throughout the system, so fresh installations need to install ghostty package instead of alacritty package.