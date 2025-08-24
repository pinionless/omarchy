# bin/omarchy-dev-add-migration

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Must open migration files in nano instead of nvim  
**SAFE TO UPDATE**: Migration creation logic can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep nano editor, merge other functionality

## Change Summary
Updated migration file editor from nvim to nano

## Diff
```diff
-nvim $migration_file
+nano $migration_file
```

## Reasoning
Part of editor simplification (change 002) - replaced LazyVim/Neovim with nano as the default text editor for development tasks including creating migration files.