# bin/omarchy-theme-set

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: `ghostty` config touch instead of `alacritty`, VSCode theme handler call  
**SAFE TO UPDATE**: Other theme switching functionality can accept upstream changes  
**CONFLICT RESOLUTION**: Keep ghostty reference and VSCode handler, merge other improvements

## Change Summary
Two different changes: terminal replacement (alacritty→ghostty config reload) and VSCode theme integration

## Diff 1 - Terminal Replacement (alacritty → ghostty)
```diff
-# Trigger alacritty config reload
-touch "$HOME/.config/alacritty/alacritty.toml"
+# Trigger ghostty config reload
+touch "$HOME/.config/ghostty/config"
```

## Diff 2 - VSCode Theme Integration
```diff
 # Set new background
 omarchy-theme-bg-next
+
+# Update VSCode theme if handler exists (Ticket 004)
+[[ -x "$HOME/.local/share/omarchy/bin/omarchy-vscode-theme-handler" ]] && "$HOME/.local/share/omarchy/bin/omarchy-vscode-theme-handler" "$THEME_NAME"
```

## Reasoning
- **Diff 1**: Part of system-wide terminal replacement (change 001) - config reload needed for ghostty instead of alacritty
- **Diff 2**: Part of VSCode theme integration (change 009) - automatically sync VSCode theme when Omarchy theme changes