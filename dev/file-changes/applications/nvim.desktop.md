# applications/nvim.desktop

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: This file must remain deleted - do not restore it  
**SAFE TO UPDATE**: N/A - file is intentionally removed  
**CONFLICT RESOLUTION**: If upstream adds this file back, delete it again

## Change Summary
Deleted Neovim desktop file as part of editor setup changes

## Diff
```diff
-[Desktop Entry]
-Name=Neovim
-GenericName=Text Editor
-Comment=Edit text files
-Exec=alacritty --class=nvim --title=nvim -e nvim -- %F
-Terminal=false
-Type=Application
-Keywords=Text;editor;
-Icon=nvim
-Categories=Utility;TextEditor;
-StartupNotify=false
-MimeType=text/english;text/plain;text/x-makefile;text/x-c++hdr;text/x-c++src;text/x-chdr;text/x-csrc;text/x-java;text/x-moc;text/x-pascal;text/x-tcl;text/x-tex;application/x-shellscript;text/x-c;text/x-c++;
```

## Reasoning
Removed as part of minimal system approach - different editor setup is used instead of the default Neovim desktop integration.