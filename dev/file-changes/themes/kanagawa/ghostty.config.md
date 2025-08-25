# themes/kanagawa/ghostty.config

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
New ghostty theme configuration

## Diff
```diff
@@ -0,0 +1,31 @@
+# Kanagawa theme for Ghostty
+background = 1f1f28
+foreground = dcd7ba
+
+# Selection colors
+selection-background = 2d4f67
+selection-foreground = c8c093
+
+# Standard colors
+palette = 0=090618
+palette = 1=c34043
+palette = 2=76946a
+palette = 3=c0a36e
+palette = 4=7e9cd8
+palette = 5=957fb8
+palette = 6=6a9589
+palette = 7=c8c093
+
+# Bright colors
+palette = 8=727169
+palette = 9=e82424
+palette = 10=98bb6c
+palette = 11=e6c384
+palette = 12=7fb4ca
+palette = 13=938aa9
+palette = 14=7aa89f
+palette = 15=dcd7ba
+
+# Additional indexed colors
+palette = 16=ffa066
+palette = 17=ff5d62
\ No newline at end of file
```

## Reasoning
Added theme support for ghostty terminal to replace alacritty theme
