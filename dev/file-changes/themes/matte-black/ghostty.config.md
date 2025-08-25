# themes/matte-black/ghostty.config

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
New ghostty theme configuration

## Diff
```diff
@@ -0,0 +1,29 @@
+# Matte Black theme for Ghostty
+background = 121212
+foreground = bebebe
+
+# Cursor colors
+cursor-color = eaeaea
+
+# Selection colors
+selection-background = 333333
+
+# Standard colors
+palette = 0=333333
+palette = 1=D35F5F
+palette = 2=FFC107
+palette = 3=b91c1c
+palette = 4=e68e0d
+palette = 5=D35F5F
+palette = 6=bebebe
+palette = 7=bebebe
+
+# Bright colors
+palette = 8=8a8a8d
+palette = 9=B91C1C
+palette = 10=FFC107
+palette = 11=b90a0a
+palette = 12=f59e0b
+palette = 13=B91C1C
+palette = 14=eaeaea
+palette = 15=ffffff
\ No newline at end of file
```

## Reasoning
Added theme support for ghostty terminal to replace alacritty theme
