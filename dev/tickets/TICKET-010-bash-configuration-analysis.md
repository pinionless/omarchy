# TICKET-010: Bash Configuration Analysis

## User Request
Research how bash is currently setup in Omarchy to replicate similar patterns for zsh implementation

## Q&A
**Research Scope:**
- Q: What specific aspects of bash setup should be analyzed?
- A: Installation patterns, plugin/enhancement systems, theme integration, configuration files
- Q: Should this include terminal emulator integration?
- A: Yes, analyze how bash integrates with Alacritty and other terminal components
- Q: What about prompt customization and theming?
- A: Yes, understand current prompt system to replicate with powerline/starship

## Description
Comprehensive analysis of Omarchy's current bash shell configuration and setup patterns to inform the zsh implementation in TICKET-003.

Research areas:
- Bash installation phase and location in install scripts
- Configuration file structure and locations
- Plugin/enhancement systems currently used
- Theme integration patterns
- Terminal emulator integration
- Prompt customization approach
- Default aliases and functions
- Environment variable setup

## Implementation Details

### Research Tasks
1. **Installation Analysis**
   - Locate bash installation in install scripts
   - Document installation phase and dependencies
   - Identify configuration files and their purposes

2. **Configuration Structure**
   - Map bash configuration files (.bashrc, .bash_profile, etc.)
   - Document configuration layering (default → theme → user)
   - Identify theme-specific bash configurations

3. **Enhancement Systems**
   - Catalog existing bash plugins/enhancements
   - Document how features like auto-completion are handled
   - Identify syntax highlighting or other shell improvements

4. **Theme Integration**
   - Analyze how bash integrates with omarchy-theme-set
   - Document prompt theming approach
   - Identify theme-specific bash configurations

## Acceptance Criteria
- [x] Document bash installation location and method
- [x] Map all bash configuration files and their purposes
- [x] Catalog current bash enhancements/plugins
- [x] Document theme integration patterns
- [x] Identify terminal emulator integration points
- [x] Document prompt customization approach
- [x] Create recommendations for zsh implementation patterns
- [x] Provide file paths and configuration examples

## Priority
Medium

## Status
Completed

## Preparation
[Placeholder. Leave empty.]

## Architecture

### Bash Installation Analysis

**Location and Method:**
- **Installation Phase:** Configuration phase (`install/config/config.sh:8`)
- **Package Dependencies:** `bash-completion` installed via `install/packages.sh:3`
- **Configuration Method:** Direct file copy from default template to user home directory
  - `cp ~/.local/share/omarchy/default/bashrc ~/.bashrc`

### Configuration File Structure

**Layered Configuration System:**
```
~/.bashrc (user file)
└── ~/.local/share/omarchy/default/bash/rc
    ├── shell       # Core shell settings, history, completion, PATH
    ├── aliases     # Command shortcuts and directory navigation  
    ├── functions   # Utility functions (compression, media transcoding)
    ├── prompt      # Simple prompt with Unicode caret and window title
    ├── init        # Tool initialization (mise, starship, zoxide, fzf)
    ├── envs        # Environment variables (EDITOR=nano, BAT_THEME)
    └── inputrc     # Readline configuration (case-insensitive completion)
```

**Key Configuration Files:**
- `/default/bashrc` - User-editable template with examples and imports
- `/default/bash/rc` - Main orchestrator sourcing all components
- `/default/bash/shell` - History settings, completion, PATH configuration
- `/default/bash/aliases` - Modern CLI tools (eza, bat, git shortcuts, zoxide)
- `/default/bash/functions` - Utility functions (compression, iso2sd, format-drive, ffmpeg)
- `/default/bash/prompt` - Simple Unicode prompt with window title
- `/default/bash/init` - Tool integrations (conditional activation)
- `/default/bash/envs` - Environment variables
- `/default/bash/inputrc` - Advanced readline configuration

### Enhancement Systems and Plugins

**Installed Enhancements:**
1. **Modern CLI Replacements:**
   - `eza` (ls replacement) - `/default/bash/aliases:2-5`
   - `zoxide` (z/cd replacement) - `/default/bash/aliases:7-16`
   - `bat` (cat replacement) - `/default/bash/aliases:6`
   - `fzf` (fuzzy finder) - `/default/bash/aliases:6` + `/default/bash/init:13-20`

2. **Development Tools:**
   - `mise` (tool version manager) - `/default/bash/init:1-3`
   - `starship` (prompt) - `/default/bash/init:5-7`
   - Git shortcuts and aliases - `/default/bash/aliases:32-35`

3. **Shell Improvements:**
   - `bash-completion` package for enhanced tab completion
   - Advanced readline configuration for intelligent completion
   - History improvements (large size, deduplication)

**Conditional Activation Pattern:**
```bash
if command -v <tool> &> /dev/null; then
  eval "$(<tool> init bash)"
fi
```

### Theme Integration Patterns

**Theme System Architecture:**
- **No bash-specific theme files** - bash configuration is theme-independent
- **Starship prompt theming** via `/config/starship.toml` (cyan color scheme)
- **Terminal emulator theming** via Ghostty color schemes (`themes/*/ghostty.config`)

**Prompt Strategy:**
- **Base prompt:** Simple Unicode caret (`PS1=$'\uf0a9 '`) with window title
- **Enhanced prompt:** Starship overrides base prompt when available
- **Theme colors:** Handled by terminal emulator, not shell directly

### Terminal Emulator Integration

**Ghostty Integration:**
- **Configuration:** `/config/ghostty/config`
- **Theme loading:** `config-file = ~/.config/omarchy/current/theme/ghostty.config`
- **Shell integration:** Theme colors applied at terminal level, not shell level

**Integration Points:**
- Window title updates via escape sequences in prompt
- Terminal color palette matches theme
- Font configuration (CaskaydiaMono Nerd Font)
- Background opacity and window decorations

## TODOWrite

Based on this analysis, here are the recommended implementation patterns for zsh:

### 1. Mirror the Modular Configuration Structure
```
/default/zsh/
├── rc          # Main orchestrator (equivalent to bash/rc)
├── shell       # Core shell settings, completion, PATH
├── aliases     # Command aliases (can reuse most bash aliases)
├── functions   # Utility functions (can reuse bash functions)
├── prompt      # Base prompt before starship override
├── init        # Tool initializations with zsh syntax
├── envs        # Environment variables (can reuse)
└── inputrc     # Zsh completion configuration (zsh-specific)
```

### 2. Package Installation Integration
- Add `zsh` and `zsh-completions` to `/install/packages.sh`
- Consider adding `zsh-syntax-highlighting` and `zsh-autosuggestions` 
- Mirror the conditional installation pattern used for bash-completion

### 3. Configuration Installation
- Add zsh setup to `/install/config/config.sh`
- Create `/default/zshrc` template similar to `/default/bashrc`
- Use same copy pattern: `cp ~/.local/share/omarchy/default/zshrc ~/.zshrc`

### 4. Tool Integration Adaptations
Update `/default/zsh/init` with zsh-specific initializations:
```bash
if command -v mise &> /dev/null; then
  eval "$(mise activate zsh)"
fi

if command -v starship &> /dev/null; then
  eval "$(starship init zsh)"
fi

if command -v zoxide &> /dev/null; then
  eval "$(zoxide init zsh)"
fi

# zsh-specific fzf integration
if command -v fzf &> /dev/null; then
  source /usr/share/fzf/completion.zsh 2>/dev/null
  source /usr/share/fzf/key-bindings.zsh 2>/dev/null
fi
```

### 5. Theme Integration Strategy
- **Maintain existing approach:** No zsh-specific theme files needed
- **Reuse Starship configuration:** Same `/config/starship.toml` works for both shells
- **Terminal-level theming:** Continue using Ghostty theme system

### 6. Migration and Coexistence
- Allow both bash and zsh to coexist during transition
- Provide user choice mechanism (similar to editor selection)
- Consider migration script for user customizations

### 7. Testing and Validation
- Test all existing functions work in zsh
- Verify tool integrations (mise, starship, zoxide, fzf) 
- Ensure theme switching continues to work
- Test terminal emulator integration remains intact