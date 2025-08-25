# themes/catppuccin/ghostty.config

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
New ghostty theme configuration

## Diff
```diff
@@ -0,0 +1,34 @@
+# Catppuccin theme for Ghostty
+background = 24273a
+foreground = cad3f5
+
+# Cursor colors
+cursor-color = f4dbd6
+
+# Selection colors  
+selection-background = f4dbd6
+selection-foreground = 24273a
+
+# Standard colors
+palette = 0=494d64
+palette = 1=ed8796
+palette = 2=a6da95
+palette = 3=eed49f
+palette = 4=8aadf4
+palette = 5=f5bde6
+palette = 6=8bd5ca
+palette = 7=b8c0e0
+
+# Bright colors
+palette = 8=5b6078
+palette = 9=ed8796
+palette = 10=a6da95
+palette = 11=eed49f
+palette = 12=8aadf4
+palette = 13=f5bde6
+palette = 14=8bd5ca
+palette = 15=a5adcb
+
+# Additional indexed colors
+palette = 16=f5a97f
+palette = 17=f4dbd6
\ No newline at end of file
```

## Reasoning
Added theme support for ghostty terminal to replace alacritty theme
