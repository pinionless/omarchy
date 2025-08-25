# themes/catppuccin-latte/ghostty.config

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
New ghostty theme configuration

## Diff
```diff
@@ -0,0 +1,34 @@
+# Catppuccin Latte theme for Ghostty
+background = eff1f5
+foreground = 4c4f69
+
+# Cursor colors
+cursor-color = dc8a78
+
+# Selection colors  
+selection-background = dc8a78
+selection-foreground = eff1f5
+
+# Standard colors
+palette = 0=bcc0cc
+palette = 1=d20f39
+palette = 2=40a02b
+palette = 3=df8e1d
+palette = 4=1e66f5
+palette = 5=ea76cb
+palette = 6=179299
+palette = 7=5c5f77
+
+# Bright colors
+palette = 8=acb0be
+palette = 9=d20f39
+palette = 10=40a02b
+palette = 11=df8e1d
+palette = 12=1e66f5
+palette = 13=ea76cb
+palette = 14=179299
+palette = 15=6c6f85
+
+# Additional indexed colors
+palette = 16=fe640b
+palette = 17=dc8a78
\ No newline at end of file
```

## Reasoning
Added theme support for ghostty terminal to replace alacritty theme
