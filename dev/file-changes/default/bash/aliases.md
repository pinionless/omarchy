# default/bash/aliases

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: The `n()` function must use `nano` instead of `nvim`  
**SAFE TO UPDATE**: Other bash aliases can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep nano reference in the n() function, merge other aliases

## Change Summary
Updated the `n()` function to use nano instead of nvim as the default editor

## Diff
```diff
-n() { if [ "$#" -eq 0 ]; then nvim .; else nvim "$@"; fi; }
+n() { if [ "$#" -eq 0 ]; then nano .; else nano "$@"; fi; }
```

## Reasoning
Part of editor replacement (change 002) - replaced LazyVim/Neovim with nano as the default text editor, so the convenient `n` alias function needs to open nano instead of nvim.