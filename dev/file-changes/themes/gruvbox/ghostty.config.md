# themes/gruvbox/ghostty.config

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
New ghostty theme configuration

## Diff
```diff
@@ -0,0 +1,23 @@
+# Gruvbox theme for Ghostty
+background = 282828
+foreground = d4be98
+
+# Standard colors
+palette = 0=3c3836
+palette = 1=ea6962
+palette = 2=a9b665
+palette = 3=d8a657
+palette = 4=7daea3
+palette = 5=d3869b
+palette = 6=89b482
+palette = 7=d4be98
+
+# Bright colors
+palette = 8=3c3836
+palette = 9=ea6962
+palette = 10=a9b665
+palette = 11=d8a657
+palette = 12=7daea3
+palette = 13=d3869b
+palette = 14=89b482
+palette = 15=d4be98
\ No newline at end of file
```

## Reasoning
Added theme support for ghostty terminal to replace alacritty theme
