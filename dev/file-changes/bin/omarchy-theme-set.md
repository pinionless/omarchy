# bin/omarchy-theme-set

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal replacement (alacritty→ghostty) as per critical-changes.md  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Terminal/editor replacements as per critical-changes.md

## Diff
```diff
@@ -55,8 +55,8 @@
   fi
 fi
 
-# Trigger alacritty config reload
-touch "$HOME/.config/alacritty/alacritty.toml"
+# Trigger ghostty config reload
+touch "$HOME/.config/ghostty/config"
 
 # Restart components to apply new theme
 pkill -SIGUSR2 btop
@@ -67,3 +67,6 @@
 
 # Set new background
 omarchy-theme-bg-next
+
+# Update VSCode theme if handler exists (Ticket 004)
+[[ -x "$HOME/.local/share/omarchy/bin/omarchy-vscode-theme-handler" ]] && "$HOME/.local/share/omarchy/bin/omarchy-vscode-theme-handler" "$THEME_NAME"
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
