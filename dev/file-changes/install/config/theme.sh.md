# install/config/theme.sh

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Editor replacement (nvim→nano) as per critical-changes.md  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Installation script updates for application changes

## Diff
```diff
@@ -14,7 +14,9 @@
 ln -snf ~/.config/omarchy/current/theme/backgrounds/1-scenery-pink-lakeside-sunset-lake-landscape-scenic-panorama-7680x3215-144.png ~/.config/omarchy/current/background
 
 # Set specific app links for current theme
-ln -snf ~/.config/omarchy/current/theme/neovim.lua ~/.config/nvim/lua/plugins/theme.lua
+
+mkdir -p ~/.config/ghostty
+ln -snf ~/.config/omarchy/current/theme/ghostty.config ~/.config/ghostty/theme.config
 
 mkdir -p ~/.config/btop/themes
 ln -snf ~/.config/omarchy/current/theme/btop.theme ~/.config/btop/themes/current.theme
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
