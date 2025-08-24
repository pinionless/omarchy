# config/ghostty/config

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: This file is required for Ghostty terminal functionality  
**SAFE TO UPDATE**: Terminal settings and theme integration can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep this file, merge any upstream enhancements

## Change Summary
Added Ghostty main configuration file as part of terminal replacement (Alacritty → Ghostty)

## Diff
```diff
+config-file = ~/.config/omarchy/current/theme/ghostty.config
+term = xterm-256color
+font-family = CaskaydiaMono Nerd Font  
+font-size = 9
+window-padding-x = 14
+window-padding-y = 14
+window-decorations = false
+background-opacity = 0.98
+keybind = f11=toggle_fullscreen
```

## Reasoning
Created to replace the deleted config/alacritty/alacritty.toml - provides main terminal configuration for Ghostty instead of Alacritty, with theme integration and consistent settings (change 001).