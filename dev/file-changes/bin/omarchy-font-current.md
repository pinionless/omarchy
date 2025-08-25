# bin/omarchy-font-current

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal replacement (alacritty→ghostty) as per critical-changes.md  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Terminal/editor replacements as per critical-changes.md

## Diff
```diff
@@ -1,3 +1,3 @@
 #!/bin/bash
 
-grep -oP 'family\s*=\s*"\K[^"]+' ~/.config/alacritty/alacritty.toml | head -n1
+grep -oP 'font-family\s*=\s*\K.*' ~/.config/ghostty/config | head -n1
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
