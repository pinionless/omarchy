# applications/Activity.desktop

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Terminal replacement: alacritty → ghostty

## Diff
```diff
@@ -0,0 +1,11 @@
+[Desktop Entry]
+Version=1.0
+Name=Activity
+Comment=System activity from btop
+Exec=ghostty --class=Activity --title=Activity -e btop
+Terminal=false
+Type=Application
+Icon=Activity
+Categories=GTK;
+StartupNotify=false
+
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
