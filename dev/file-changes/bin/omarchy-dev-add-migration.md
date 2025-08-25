# bin/omarchy-dev-add-migration

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Editor replacement (nvim→nano) as per critical-changes.md  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Terminal/editor replacements as per critical-changes.md

## Diff
```diff
@@ -3,4 +3,4 @@
 cd ~/.local/share/omarchy
 migration_file="$HOME/.local/share/omarchy/migrations/$(git log -1 --format=%cd --date=unix).sh"
 touch $migration_file
-nvim $migration_file
+nano $migration_file
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
