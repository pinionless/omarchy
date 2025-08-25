# config/uwsm/env

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal replacement (alacritty→ghostty) as per critical-changes.md  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Application replacement updates

## Diff
```diff
@@ -1,6 +1,6 @@
 export OMARCHY_PATH=$HOME/.local/share/omarchy
 export PATH=$OMARCHY_PATH/bin/:$PATH
-export TERMINAL=alacritty
+export TERMINAL=ghostty
 
 if command -v mise &> /dev/null; then
   eval "$(mise activate bash)"
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
