# bin/omarchy-font-set

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal replacement (alacritty→ghostty) as per critical-changes.md  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Terminal/editor replacements as per critical-changes.md

## Diff
```diff
@@ -4,7 +4,7 @@
 
 if [[ -n "$font_name" && "$font_name" != "CNCLD" ]]; then
   if fc-list | grep -iq "$font_name"; then
-    sed -i "s/family = \".*\"/family = \"$font_name\"/g" ~/.config/alacritty/alacritty.toml
+    sed -i "s/font-family = .*/font-family = $font_name/g" ~/.config/ghostty/config
     sed -i "s/font-family: .*/font-family: '$font_name';/g" ~/.config/waybar/style.css
     sed -i "s/font-family: .*/font-family: '$font_name';/g" ~/.config/swayosd/style.css
     xmlstarlet ed -L \
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
