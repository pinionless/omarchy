# themes/ristretto/ghostty.config

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
New ghostty theme configuration

## Diff
```diff
@@ -0,0 +1,30 @@
+# Ristretto theme for Ghostty
+background = 2c2525
+foreground = e6d9db
+
+# Cursor colors
+cursor-color = c3b7b8
+
+# Selection colors
+selection-background = 403e41
+selection-foreground = e6d9db
+
+# Standard colors
+palette = 0=2c2525
+palette = 1=fd6883
+palette = 2=adda78
+palette = 3=f9cc6c
+palette = 4=f38d70
+palette = 5=a8a9eb
+palette = 6=85dacc
+palette = 7=e6d9db
+
+# Bright colors
+palette = 8=463a3a
+palette = 9=ff8297
+palette = 10=c8e292
+palette = 11=fcd675
+palette = 12=f8a788
+palette = 13=bebffd
+palette = 14=9bf1e1
+palette = 15=f1e5e7
\ No newline at end of file
```

## Reasoning
Added theme support for ghostty terminal to replace alacritty theme
