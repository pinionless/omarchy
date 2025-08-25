# bin/omarchy-tui-remove

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal replacement (alacritty→ghostty) as per critical-changes.md  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Terminal/editor replacements as per critical-changes.md

## Diff
```diff
@@ -6,7 +6,7 @@
 if [ "$#" -ne 1 ]; then
   # Find all web apps
   while IFS= read -r -d '' file; do
-    if grep -q '^Exec=.*alacritty.*-e' "$file"; then
+    if grep -q '^Exec=.*ghostty.*-e' "$file"; then
       TUIS+=("$(basename "${file%.desktop}")")
     fi
   done < <(find "$DESKTOP_DIR" -name '*.desktop' -print0)
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
