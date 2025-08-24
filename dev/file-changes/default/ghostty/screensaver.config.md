# default/ghostty/screensaver.config

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: This file is required for Ghostty screensaver functionality  
**SAFE TO UPDATE**: Screensaver configuration settings can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep this file, merge any upstream enhancements

## Change Summary
Added Ghostty screensaver configuration template as part of terminal replacement (Alacritty → Ghostty)

## Diff
```diff
+background = 000000
+cursor-color = 000000
+font-size = 18
+background-opacity = 1.0
```

## Reasoning
Created to replace the deleted default/alacritty/screensaver.toml - provides screensaver configuration template for Ghostty instead of Alacritty (change 001).