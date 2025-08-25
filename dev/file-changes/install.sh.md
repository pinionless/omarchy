# install.sh

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Application replacement updates

## Diff
```diff
@@ -19,9 +19,9 @@
 source $OMARCHY_INSTALL/packages.sh
 source $OMARCHY_INSTALL/packaging/asdcontrol.sh
 source $OMARCHY_INSTALL/packaging/fonts.sh
-source $OMARCHY_INSTALL/packaging/lazyvim.sh
 source $OMARCHY_INSTALL/packaging/webapps.sh
 source $OMARCHY_INSTALL/packaging/tuis.sh
+source $OMARCHY_INSTALL/packaging/personal.sh
 
 # Configuration
 source $OMARCHY_INSTALL/config/config.sh
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
