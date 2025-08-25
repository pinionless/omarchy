# applications/About.desktop

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
+Name=About
+Comment=System information from Fastfetch
+Exec=ghostty --font-size=9 --class=About --title=About -e bash -c 'fastfetch; read -n 1 -s'
+Terminal=false
+Type=Application
+Icon=Arch
+Categories=GTK;
+StartupNotify=false
+
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
