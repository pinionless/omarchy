# applications/About.desktop

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal command must use `ghostty` instead of `alacritty`  
**SAFE TO UPDATE**: All other parts of the desktop file can accept upstream changes  
**CONFLICT RESOLUTION**: If upstream changes the Exec line, adapt their changes but keep `ghostty` and `--font-size=9` syntax

## Change Summary
Replaced Alacritty terminal with Ghostty terminal and updated font size syntax

## Diff
```diff
-Exec=alacritty -o "font.size=9" --class=About --title=About -e bash -c 'fastfetch; read -n 1 -s'
+Exec=ghostty --font-size=9 --class=About --title=About -e bash -c 'fastfetch; read -n 1 -s'
```

## Reasoning
Part of the terminal replacement feature where Alacritty was replaced with Ghostty throughout the system. The font size syntax needed to be updated because:
- Alacritty uses: `-o "font.size=9"`  
- Ghostty uses: `--font-size=9`