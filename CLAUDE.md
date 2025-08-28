# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Omarchy is a Linux distribution setup automation tool specifically designed for Arch Linux. It transforms a fresh Arch installation into a fully-configured, modern web development system centered around the Hyprland window manager. The project is essentially a sophisticated dotfiles management system combined with package installation automation.

## Fork-Specific Changes

This fork contains significant customizations focused on application replacements and system simplification:

### Critical Application Replacements
- **Terminal**: `alacritty` → `ghostty` (with equals syntax for arguments)
- **Editor**: `nvim`/LazyVim → `nano` (simplified editing workflow)
- **File Manager**: `nautilus` → `krusader` (dual-pane interface)
- **Password Manager**: `1password` → `bitwarden` (web vault integration)

### Removed Applications
Systematically removed complex applications for simplified system:
- Development: `zoom`, `obs-studio`, `kdenlive`, `typora`, `xournalpp`
- Cloud: `dropbox`, `tailscale`
- Media: `spotify` (web apps preferred)

### Migration Policy
- All 84+ upstream migrations were removed for clean state
- Selective acceptance of new upstream migrations
- Maintains compatibility while avoiding historical baggage

### Documentation System
Comprehensive merge management system in `/dev/file-changes/`:
- **Critical changes**: System-wide replacement rules
- **Change index**: Catalog of all customized files
- **Individual file docs**: Detailed merge guidance per file

## Architecture

### Core Components
- **Shell-based automation scripts** organized in modular phases
- **Layered configuration system** with theme support and user overrides
- **Migration system** for version updates (database-style with timestamps)
- **Custom command framework** via 55+ `omarchy-*` utilities

### Key Technologies
- **Hyprland** (Wayland compositor) - Primary desktop environment
- **Waybar** (status bar), **Walker** (launcher), **Ghostty** (terminal)
- **nano** (text editor) - Simple, reliable editing
- **Krusader** (file manager) - Dual-pane file management
- **Bitwarden** (password manager) - Web vault integration
- **yay** (AUR helper) for package management
- **mise** for development tool version management

### Directory Structure
- `/install/` - Installation scripts organized by phase (preflight, config, development, desktop, apps)
- `/default/` - Base configuration templates
- `/config/` - Configuration files that get copied to `~/.config/`
- `/themes/` - Visual theme definitions (catppuccin, gruvbox, tokyo-night, etc.)
- `/bin/` - Custom command-line utilities
- `/migrations/` - Timestamp-based migration scripts

## Common Commands

### Installation
```bash
# Fresh installation from Arch Linux
curl -fsSL https://raw.githubusercontent.com/basecamp/omarchy/master/boot.sh | bash

# With custom fork
OMARCHY_REPO="username/fork" bash -c "$(curl -fsSL https://raw.githubusercontent.com/username/fork/master/boot.sh)"
```

### System Management
```bash
omarchy-update              # Update entire system (git pull + migrations + packages)
omarchy-migrate             # Apply pending migrations only
omarchy-menu                # Interactive system menu
```

### Configuration Management
```bash
omarchy-refresh-config <path>    # Copy default config to user config with backup
omarchy-refresh-hyprland         # Refresh Hyprland configuration
omarchy-refresh-waybar           # Refresh Waybar configuration
```

### Theme Management
```bash
omarchy-theme-list          # List available themes
omarchy-theme-set <theme>   # Switch active theme
omarchy-theme-install       # Install theme to system
```

### Package Management
```bash
omarchy-pkg-install <pkg>   # Install package via yay
omarchy-pkg-remove <pkg>    # Remove package
```

## Architecture Patterns

### Layered Configuration System
1. **Default configs** in `/default/` directory
2. **Theme-specific overrides** in `/themes/<theme>/`
3. **User customizations** in `~/.config/`

Configuration refresh pattern: Default → User Config → Timestamped backup if changed

### Migration System
- Uses Unix timestamps for migration ordering
- Tracks applied migrations in `~/.local/state/omarchy/migrations`
- Migrations are idempotent and can be safely re-run
- **Fork Policy**: Historical migrations removed for clean state, selective acceptance of new upstream migrations

### Installation Phases
1. **Preflight** - Guards, AUR setup, migrations
2. **Configuration** - System settings, keyboard, network  
3. **Development** - Terminal tools, dev packages
4. **Desktop** - GUI apps, Hyprland stack
5. **Applications** - Web apps, extras, mimetypes

### Theme Architecture
- Active theme symlinked at `~/.config/omarchy/current/theme`
- Coordinated color schemes across all components
- Hot-swappable without system restart

## Development Notes

- No traditional build system (package.json/Makefile) - uses shell automation
- All custom tools follow `omarchy-*` naming convention
- Configuration files use symlinks + refresh pattern for updates
- Error handling uses trap-based recovery with user instructions
- Package installation automated via `yay --noconfirm`

## File Locations
- Installation root: `~/.local/share/omarchy`
- User configs: `~/.config/` (standard XDG locations)
- State tracking: `~/.local/state/omarchy/`

## Fork Documentation System

Critical for upstream merge management - always consult before merging:

- **`@dev/file-changes/README.md`** - Documentation system overview and merge workflow
- **`@dev/file-changes/critical-changes.md`** - System-wide replacement rules (MANDATORY)
- **`@dev/file-changes/change-index.md`** - Complete catalog of all customized files
- **`@dev/file-changes/[path]/[file].md`** - Individual file merge guidance with diffs

**Merge Workflow**: Always check critical changes → review customized files → apply individual file guidance → verify system integrity

## Development Systems

### Change Documentation (`@dev/changes/`)

Sequential documentation of all major modifications made to the codebase:

- **`@dev/changes/README.md`** - Change documentation system overview
- **`@dev/changes/000-TEMPLATE.md`** - Template for documenting new changes
- **`@dev/changes/001-*.md` to `009-*.md`** - Individual change documentation files

Each change file documents:
- Files modified/added/deleted
- Goal and rationale for the change  
- Migration requirements
- Testing performed
- Special considerations

**Usage**: Copy template → sequential numbering → descriptive naming → comprehensive documentation

### Ticket System (`@dev/tickets/`)

Project task management and feature tracking:

- **`@dev/tickets/ticket-list.md`** - Centralized ticket index with priority levels
- **`@dev/tickets/TICKET-XXX-description.md`** - Individual ticket files

**Current Status**:
- **High Priority**: YubiKey authentication system
- **Medium Priority**: Zsh integration, Waybar optimization, Bash/Zsh compatibility
- **Completed**: VSCode installation, Bitwarden webapp, core applications (Firefox, Thunderbird, Plexamp)

**Workflow**: Create ticket → update ticket-list.md → track progress → mark completed/archived