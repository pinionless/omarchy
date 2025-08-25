# boot.sh

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Application replacement updates

## Diff
```diff
@@ -17,7 +17,7 @@
 sudo pacman -Sy --noconfirm --needed git
 
 # Use custom repo if specified, otherwise default to basecamp/omarchy
-OMARCHY_REPO="${OMARCHY_REPO:-basecamp/omarchy}"
+OMARCHY_REPO="${OMARCHY_REPO:-pinionless/omarchy-minimal}"
 
 echo -e "\nCloning Omarchy from: https://github.com/${OMARCHY_REPO}.git"
 rm -rf ~/.local/share/omarchy/
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
