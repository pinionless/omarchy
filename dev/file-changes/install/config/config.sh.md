# install/config/config.sh

## =¨ MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Zsh configuration copying alongside bash configuration  
**SAFE TO UPDATE**: Directory creation, config copying mechanisms  
**CONFLICT RESOLUTION**: Preserve zshrc copying, accept upstream config handling changes

## Change Summary
Added zshrc copying to match bashrc handling for comprehensive shell support

## Diff
```diff
-# Use default bashrc from Omarchy
+# Use default bashrc and zshrc from Omarchy
 cp ~/.local/share/omarchy/default/bashrc ~/.bashrc
+cp ~/.local/share/omarchy/default/zshrc ~/.zshrc
```

## Reasoning
Users installing with zsh as their default shell need the comprehensive zsh configuration file copied to their home directory, just like bash users get the bashrc. This ensures both shell environments are properly configured during Omarchy installation.