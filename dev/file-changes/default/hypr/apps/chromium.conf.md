# default/hypr/apps/chromium.conf

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Template updates for application replacements

## Diff
```diff
@@ -3,4 +3,4 @@
 
 # Only slight opacity when unfocused
 windowrule = opacity 1 0.97, class:^(Chromium|chromium|google-chrome|google-chrome-unstable|Brave-browser|brave-browser)$
-windowrule = opacity 1 1, initialTitle:(youtube.com_/|app.zoom.us_/wc/home)
+windowrule = opacity 1 1, initialTitle:(youtube.com_/)
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
