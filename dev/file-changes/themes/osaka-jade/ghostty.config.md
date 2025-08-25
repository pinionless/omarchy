# themes/osaka-jade/ghostty.config

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
New ghostty theme configuration

## Diff
```diff
@@ -0,0 +1,26 @@
+# Osaka Jade theme for Ghostty
+background = 111c18
+foreground = C1C497
+
+# Cursor colors
+cursor-color = D7C995
+
+# Standard colors
+palette = 0=23372B
+palette = 1=FF5345
+palette = 2=549e6a
+palette = 3=459451
+palette = 4=509475
+palette = 5=D2689C
+palette = 6=2DD5B7
+palette = 7=F6F5DD
+
+# Bright colors
+palette = 8=53685B
+palette = 9=db9f9c
+palette = 10=143614
+palette = 11=E5C736
+palette = 12=ACD4CF
+palette = 13=75bbb3
+palette = 14=8CD3CB
+palette = 15=9eebb3
\ No newline at end of file
```

## Reasoning
Added theme support for ghostty terminal to replace alacritty theme
