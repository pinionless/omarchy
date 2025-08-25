# config/ghostty/config

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
New ghostty configuration files

## Diff
```diff
@@ -0,0 +1,19 @@
+# Import theme configuration
+config-file = ~/.config/omarchy/current/theme/ghostty.config
+
+# Environment variables
+term = xterm-256color
+
+# Font configuration
+font-family = CaskaydiaMono Nerd Font
+font-size = 9
+
+# Window configuration  
+window-padding-x = 14
+window-padding-y = 14
+window-decoration = false
+background-opacity = 0.98
+confirm-close-surface = false
+
+# Keybindings
+keybind = f11=toggle_fullscreen
\ No newline at end of file
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
