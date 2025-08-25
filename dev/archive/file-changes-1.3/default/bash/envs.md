# default/bash/envs

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: EDITOR environment variable must be set to `nano` instead of `nvim`  
**SAFE TO UPDATE**: Other environment variables can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep nano as EDITOR, merge other environment settings

## Change Summary
Changed the default system editor from nvim to nano

## Diff
```diff
-export EDITOR="nvim"
+export EDITOR="nano"
```

## Reasoning
Part of editor replacement (change 002) - replaced LazyVim/Neovim with nano as the default text editor, so the system-wide EDITOR environment variable needs to point to nano instead of nvim.