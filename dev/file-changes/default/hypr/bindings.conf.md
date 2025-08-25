# default/hypr/bindings.conf

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Editor replacement (nvim→nano) as per critical-changes.md  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Template updates for application replacements

## Diff
```diff
@@ -4,7 +4,7 @@
 bindd = SUPER, F, File manager, exec, $fileManager
 bindd = SUPER, B, Web browser, exec, $browser
 bindd = SUPER, M, Music player, exec, $music
-bindd = SUPER, N, Neovim, exec, $terminal -e nvim
+bindd = SUPER, N, Text Editor, exec, $terminal -e nano
 bindd = SUPER, T, Top, exec, $terminal -e btop
 bindd = SUPER, D, Lazy Docker, exec, $terminal -e lazydocker
 bindd = SUPER, G, Messenger, exec, $messenger
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
