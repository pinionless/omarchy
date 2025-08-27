# Critical System-Wide Changes

System-wide replacements that must be applied to ALL files, including new files from upstream merges.

## 🚨 MANDATORY REPLACEMENTS

### Terminal: Alacritty → Ghostty
**CANNOT USE**: `alacritty` - will break the system  
**MUST REPLACE WITH**: `ghostty`  
**APPLIES TO**: All files that reference terminal applications  
**SYNTAX NOTE**: Ghostty requires equals format for arguments: `--class=VALUE` and `--config-file=PATH` (not spaces)  
**CRITICAL**: Ghostty window classes MUST use dot notation (e.g., `--class=Name.ghostty`) - classes without dots are ignored!  
**FIXED CLASSES**: `Omarchy`, `Wiremix`, `Impala`, `Screensaver` → all now use `.ghostty` suffix

After merges, search for violations:
```bash
grep -r "alacritty" . --exclude-dir=.git
# Also check for Ghostty classes missing dot notation:
grep -r "ghostty --class=[^.]*[^y] " . --exclude-dir=.git
```

### Editor: nvim → nano
**CANNOT USE**: `nvim`, `neovim`, LazyVim references - will break simplified system  
**MUST REPLACE WITH**: `nano`  
**APPLIES TO**: All files that reference text editing, EDITOR variables, keybindings

After merges, search for violations:
```bash
grep -r "nvim\|neovim" . --exclude-dir=.git
```

### File Manager: nautilus → krusader  
**CANNOT USE**: `nautilus`, `org.gnome.NautilusPreviewer` - will break file management  
**MUST REPLACE WITH**: `krusader`  
**APPLIES TO**: Keybindings, window rules, file picker references

After merges, search for violations:
```bash
grep -r "nautilus" . --exclude-dir=.git
```

### Password Manager: 1password → bitwarden
**CANNOT USE**: `1password` application references - will break security integration  
**MUST REPLACE WITH**: `bitwarden` web vault (`https://vault.bitwarden.com`)  
**APPLIES TO**: Keybindings, lock screen scripts, security workflows

After merges, search for violations:
```bash
grep -r "1password" . --exclude-dir=.git
```

### Removed Applications Policy
**CANNOT REINSTALL**: These applications were systematically removed - do not restore them  
**FORBIDDEN APPS**: `zoom`, `dropbox`, `tailscale`, `typora`, `xournalpp`, `obs-studio`, `kdenlive`, `spotify`  
**APPLIES TO**: Installation scripts, desktop files, menu entries, keybindings

After merges, search for violations:
```bash
grep -rE "zoom|dropbox|tailscale|typora|xournalpp|obs-studio|kdenlive|spotify" . --exclude-dir=.git
```

### Migrations: Selective Policy
**DELETED MIGRATIONS**: All 84 upstream migrations were removed - do not restore them  
**NEW MIGRATIONS**: Accept new future migrations as needed  
**POLICY**: Keep migrations/ folder clean - only add migrations we actually want

After merges, check for restored deleted migrations:
```bash
ls migrations/ | wc -l  # Should be small number, not 84+
```

### Shell Configuration: Bash/Zsh Review Policy
**REVIEW REQUIRED**: Any bash configuration changes should be reviewed for potential zsh implementation  
**CONSIDER PORTING**: Evaluate if new bash enhancements would benefit zsh users  
**APPLIES TO**: Shell-related packages, aliases, functions, completions, prompts, and integrations

When reviewing upstream changes to bash configuration:

1. **Package Changes**: Review `install/packages.sh` for new shell-enhancement packages
2. **Bash Config Changes**: Review all files in `default/bash/` directory for new features/improvements
3. **Evaluate for Zsh**: Consider if changes would be valuable for zsh configuration
4. **Optional Implementation**: Decide whether to implement equivalent zsh features

After merges, review bash changes:
```bash
# Check for bash config changes that might be worth porting
grep -r "bash" default/ install/ | grep -v ".git"
# Review what bash enhancements exist vs zsh
diff -r default/bash/ default/zsh/ || echo "Review differences"
```
