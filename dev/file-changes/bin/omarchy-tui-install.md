# bin/omarchy-tui-install

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal replacement (alacritty→ghostty) as per critical-changes.md  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Terminal/editor replacements as per critical-changes.md

## Diff
```diff
@@ -40,7 +40,7 @@
 Version=1.0
 Name=$APP_NAME
 Comment=$APP_NAME
-Exec=alacritty --class $APP_CLASS -e $APP_EXEC
+Exec=ghostty --class=$APP_CLASS -e $APP_EXEC
 Terminal=false
 Type=Application
 Icon=$ICON_PATH
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
