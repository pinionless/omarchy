# applications/wiremix.desktop

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Terminal replacement: alacritty → ghostty

## Diff
```diff
@@ -0,0 +1,7 @@
+[Desktop Entry]
+Name=Audio Settings
+Comment=Using Wiremix
+Exec=ghostty --class=Wiremix --title=Wiremix -e wiremix
+Icon=audio-headphones
+Type=Application
+Terminal=false
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
