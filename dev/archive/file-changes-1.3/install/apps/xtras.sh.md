# install/apps/xtras.sh

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Must include personal.sh installation system  
**SAFE TO UPDATE**: Other extra app installation logic can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep personal.sh integration, merge other functionality

## Change Summary
Added personal apps extension system integration

## Diff
```diff
+# Include personal apps if file exists
+if [[ -f "$OMARCHY_INSTALL/apps/personal.sh" ]]; then
+  source "$OMARCHY_INSTALL/apps/personal.sh"
+fi
```

## Reasoning
Part of personal apps extension system (change 006) - allows loading personal app installations without modifying upstream files, making syncing with upstream safer.