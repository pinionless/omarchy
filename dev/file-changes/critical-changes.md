# Critical System-Wide Changes

System-wide replacements that must be applied to ALL files, including new files from upstream merges.

## 🚨 MANDATORY REPLACEMENTS

### Terminal: Alacritty → Ghostty
**CANNOT USE**: `alacritty` - will break the system  
**MUST REPLACE WITH**: `ghostty`  
**APPLIES TO**: All files that reference terminal applications

After merges, search for violations:
```bash
grep -r "alacritty" . --exclude-dir=.git
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