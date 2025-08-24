# default/hypr/bindings.conf

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Super+N must launch `nano` instead of `nvim`  
**SAFE TO UPDATE**: Other keybinding templates can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep nano reference, merge other keybinding functionality

## Change Summary
Updated the default editor keybinding from nvim to nano

## Diff
```diff
-bindd = SUPER, N, Neovim, exec, $terminal -e nvim
+bindd = SUPER, N, Text Editor, exec, $terminal -e nano
```

## Reasoning
Part of editor replacement (change 002) - replaced LazyVim/Neovim with nano as the default text editor, so the default keybinding template needs to launch nano instead of nvim.