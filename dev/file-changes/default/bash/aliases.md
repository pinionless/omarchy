# default/bash/aliases

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Editor replacement (nvim→nano) as per critical-changes.md  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Template updates for application replacements

## Diff
```diff
@@ -27,7 +27,7 @@
 alias g='git'
 alias d='docker'
 alias r='rails'
-n() { if [ "$#" -eq 0 ]; then nvim .; else nvim "$@"; fi; }
+n() { if [ "$#" -eq 0 ]; then nano .; else nano "$@"; fi; }
 
 # Git
 alias gcm='git commit -m'
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
