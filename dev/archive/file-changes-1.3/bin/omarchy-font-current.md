# bin/omarchy-font-current

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Must read from ghostty config instead of alacritty config  
**SAFE TO UPDATE**: Font reading logic can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep ghostty path and syntax, merge other functionality

## Change Summary
Updated font detection to read from Ghostty config instead of Alacritty config

## Diff
```diff
-grep -oP 'family\s*=\s*"\K[^"]+' ~/.config/alacritty/alacritty.toml | head -n1
+grep -oP 'font-family\s*=\s*\K.*' ~/.config/ghostty/config | head -n1
```

## Reasoning
Part of system-wide terminal replacement (change 001) - font detection needs to read from ghostty config file instead of alacritty config, and use ghostty's 'font-family' syntax instead of alacritty's 'family' syntax.