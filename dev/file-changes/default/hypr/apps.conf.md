# default/hypr/apps.conf

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Template updates for application replacements

## Diff
```diff
@@ -6,5 +6,5 @@
 source = ~/.local/share/omarchy/default/hypr/apps/steam.conf
 source = ~/.local/share/omarchy/default/hypr/apps/system.conf
 source = ~/.local/share/omarchy/default/hypr/apps/walker.conf
-source = ~/.local/share/omarchy/default/hypr/apps/1password.conf
+# 1password.conf removed - using bitwarden web vault
 source = ~/.local/share/omarchy/default/hypr/apps/jetbrains.conf
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
