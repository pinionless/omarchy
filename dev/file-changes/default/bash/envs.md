# default/bash/envs

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Editor replacement (nvim→nano) as per critical-changes.md  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Template updates for application replacements

## Diff
```diff
@@ -1,4 +1,4 @@
 # Editor used by CLI
-export EDITOR="nvim"
+export EDITOR="nano"
 export SUDO_EDITOR="$EDITOR"
 export BAT_THEME=ansi
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
