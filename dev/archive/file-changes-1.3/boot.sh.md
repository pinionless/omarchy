# boot.sh

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Must use `pinionless/omarchy-minimal` as default repo instead of `basecamp/omarchy`  
**SAFE TO UPDATE**: Boot process logic can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep the custom fork reference, merge other functionality

## Change Summary
Changed default repository from basecamp/omarchy to pinionless/omarchy-minimal

## Diff
```diff
-OMARCHY_REPO="${OMARCHY_REPO:-basecamp/omarchy}"
+OMARCHY_REPO="${OMARCHY_REPO:-pinionless/omarchy-minimal}"
```

## Reasoning
Updated to point to the custom fork instead of the original upstream repository, ensuring that fresh installations use this minimal/customized version by default rather than the upstream basecamp version.