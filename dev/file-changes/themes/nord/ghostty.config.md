# themes/nord/ghostty.config

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
New ghostty theme configuration

## Diff
```diff
@@ -0,0 +1,29 @@
+# Nord theme for Ghostty
+background = 2e3440
+foreground = d8dee9
+
+# Cursor colors
+cursor-color = d8dee9
+
+# Selection colors
+selection-background = 4c566a
+
+# Standard colors
+palette = 0=3b4252
+palette = 1=bf616a
+palette = 2=a3be8c
+palette = 3=ebcb8b
+palette = 4=81a1c1
+palette = 5=b48ead
+palette = 6=88c0d0
+palette = 7=e5e9f0
+
+# Bright colors
+palette = 8=4c566a
+palette = 9=bf616a
+palette = 10=a3be8c
+palette = 11=ebcb8b
+palette = 12=81a1c1
+palette = 13=b48ead
+palette = 14=8fbcbb
+palette = 15=eceff4
\ No newline at end of file
```

## Reasoning
Added theme support for ghostty terminal to replace alacritty theme
