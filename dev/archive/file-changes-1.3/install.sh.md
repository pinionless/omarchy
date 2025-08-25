# install.sh

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Must source `nano.sh` instead of `nvim.sh` during installation  
**SAFE TO UPDATE**: Other installation steps can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep nano.sh reference, merge other installation functionality

## Change Summary
Changed editor installation from nvim.sh to nano.sh during system setup

## Diff
```diff
-source $OMARCHY_INSTALL/development/nvim.sh
+source $OMARCHY_INSTALL/development/nano.sh
```

## Reasoning
Part of editor replacement (change 002) - replaced LazyVim/Neovim with nano as the default text editor, so the installation script needs to install nano setup instead of nvim setup during fresh installations.