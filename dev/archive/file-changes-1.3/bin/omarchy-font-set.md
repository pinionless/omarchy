# bin/omarchy-font-set

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Must modify ghostty config instead of alacritty config  
**SAFE TO UPDATE**: Font setting logic for other components can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep ghostty syntax, merge other functionality

## Change Summary
Updated font setting to modify Ghostty config instead of Alacritty config

## Diff
```diff
-    sed -i "s/family = \".*\"/family = \"$font_name\"/g" ~/.config/alacritty/alacritty.toml
+    sed -i "s/font-family = .*/font-family = $font_name/g" ~/.config/ghostty/config
```

## Reasoning
Part of system-wide terminal replacement (change 001) - font setting needs to modify ghostty config file instead of alacritty config, and use ghostty's 'font-family = VALUE' syntax instead of alacritty's 'family = "VALUE"' syntax.