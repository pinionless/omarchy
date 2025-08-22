# Omarchy Applications List

This document lists all applications and packages installed by the omarchy-minimal setup script, organized by installation method.

## Installation Methods Overview

| Method | Description | Package Count |
|--------|-------------|---------------|
| **Official Arch Repos** | Standard pacman packages via yay | ~60 packages |
| **AUR** | Arch User Repository packages | ~20 packages |
| **Chaotic-AUR** | Pre-built AUR binaries | 1 package |
| **mise** | Development tool version manager | Multiple runtimes |
| **Docker** | Container images | 4 database services |
| **Web Apps** | PWA-style applications via Chromium | 6 applications |
| **External Installers** | Custom installation scripts | 2 services |
| **Source Build** | Compiled from source | 1 utility |

---

## Official Arch Linux Repository (via yay/pacman)

### Desktop Environment & Window Manager
- **hyprland** - Modern Wayland compositor and window manager
- **hyprshot** - Screenshot utility for Hyprland
- **hyprpicker** - Color picker utility
- **hyprlock** - Screen locker
- **hypridle** - Idle management daemon
- **hyprsunset** - Blue light filter/night mode
- **hyprland-qtutils** - Qt utilities for Hyprland integration

### Status Bar & Desktop Integration
- **waybar** - Customizable status bar for Wayland
- **xdg-desktop-portal-hyprland** - Desktop portal for Hyprland
- **xdg-desktop-portal-gtk** - GTK desktop portal (file pickers, etc.)
- **swaybg** - Wallpaper/background setter
- **mako** - Notification daemon
- **swayosd** - On-screen display for volume/brightness changes
- **libqalculate** - Calculator engine for walker

### File Management & System
- **krusader** - Advanced dual-pane file manager
- **gvfs-mtp** - MTP device support for file managers
- **ffmpegthumbnailer** - Video thumbnail generator

### Media Applications
- **mpv** - Lightweight video player
- **imv** - Image viewer for Wayland
- **evince** - PDF document viewer

### System Tools & Utilities
- **brightnessctl** - Screen brightness control
- **playerctl** - Media player control via CLI
- **slurp** - Screen region selector
- **wf-recorder** - Screen recorder (NVIDIA systems)
- **wl-screenrec** - Screen recorder (non-NVIDIA systems)

### Terminal & CLI Tools
- **fd** - Modern find replacement
- **eza** - Modern ls replacement with colors and icons
- **fzf** - Fuzzy finder for files and commands
- **ripgrep** - Fast text search tool
- **zoxide** - Smart directory jumper (cd replacement)
- **bat** - Syntax-highlighted cat replacement
- **wl-clipboard** - Wayland clipboard utilities
- **wl-clip-persist** - Clipboard persistence for Wayland
- **fastfetch** - System information display
- **btop** - Modern system monitor and process viewer

### Network & Archive Tools
- **wget** - File downloader
- **curl** - Data transfer tool
- **unzip** - Archive extraction
- **jq** - JSON processor and query tool
- **xmlstarlet** - XML processing toolkit
- **inetutils** - Network utilities (ping, telnet, etc.)

### Documentation & System Info
- **man** - Manual pages
- **tldr** - Simplified command examples
- **less** - Text pager
- **whois** - Domain lookup utility
- **plocate** - Fast file locating system
- **bash-completion** - Enhanced bash tab completion
- **gum** - Interactive shell components and prompts
- **impala** - TUI for Linux commands

### Audio System
- **pamixer** - PulseAudio/PipeWire mixer
- **wireplumber** - PipeWire session manager

### Development Tools
- **git** - Distributed version control system
- **github-cli** - GitHub command line interface
- **lazygit** - Terminal UI for git commands
- **mise** - Development tool version manager
- **base-devel** - Essential build tools (make, gcc, etc.)
- **cargo** - Rust package manager and build tool
- **clang** - LLVM compiler
- **llvm** - LLVM compiler infrastructure
- **gcc14** - Legacy GCC version for compatibility
- **docker** - Container platform
- **docker-compose** - Multi-container Docker applications
- **docker-buildx** - Extended build capabilities
- **mariadb-libs** - MariaDB client libraries
- **postgresql-libs** - PostgreSQL client libraries

### Security & Authentication
- **polkit-gnome** - PolicyKit authentication agent
- **gnome-keyring** - Secure credential storage
- **ufw** - Uncomplicated Firewall
- **ufw-docker** - Docker integration for UFW

### System Services
- **power-profiles-daemon** - System power management
- **plymouth** - Boot splash screen system
- **iwd** - Wireless network daemon (conditional)

### Printing System
- **cups** - Common UNIX Printing System
- **cups-pdf** - PDF printer backend
- **cups-filters** - Print filters
- **cups-browsed** - Network printer discovery
- **system-config-printer** - Printer configuration GUI
- **avahi** - Service discovery
- **nss-mdns** - Multicast DNS resolution

### Input & Internationalization
- **fcitx5** - Input method framework
- **fcitx5-gtk** - GTK integration for fcitx5
- **fcitx5-qt** - Qt integration for fcitx5

### Applications
- **chromium** - Open-source web browser
- **signal-desktop** - Secure messaging application
- **gnome-calculator** - Calculator application
- **libreoffice** - Office suite (documents, spreadsheets, presentations)

### Bluetooth
- **blueberry** - Bluetooth device management GUI

### Fonts (Core)
- **ttf-font-awesome** - Icon font for UI elements
- **noto-fonts** - Google's comprehensive font family
- **noto-fonts-emoji** - Emoji support
- **ttf-jetbrains-mono** - JetBrains programming font (if not OMARCHY_BARE)
- **noto-fonts-cjk** - CJK character support (if not OMARCHY_BARE)
- **noto-fonts-extra** - Extended international fonts (if not OMARCHY_BARE)

### Themes & Appearance
- **kvantum-qt5** - Qt5 theming engine
- **gnome-themes-extra** - Additional GTK themes (includes Adwaita-dark)
- **yaru-icon-theme** - Ubuntu's Yaru icon set

### NVIDIA Support (Conditional)
- **nvidia-open-dkms** or **nvidia-dkms** - NVIDIA kernel drivers
- **nvidia-utils** - NVIDIA userspace utilities
- **lib32-nvidia-utils** - 32-bit NVIDIA libraries
- **egl-wayland** - EGL Wayland support for NVIDIA
- **libva-nvidia-driver** - Hardware video acceleration
- **qt5-wayland** - Qt5 Wayland support
- **qt6-wayland** - Qt6 Wayland support
- **linux-headers** - Kernel headers (various versions)

### Hardware Authentication (Optional)
- **fprintd** - Fingerprint authentication daemon
- **usbutils** - USB device utilities
- **libfido2** - FIDO2/WebAuthn library
- **pam-u2f** - U2F PAM module

---

## AUR (Arch User Repository)

### Essential Tools
- **walker-bin** - Application launcher and dmenu replacement
- **wiremix** - PipeWire mixer interface
- **satty** - Screenshot annotation tool
- **lazydocker-bin** - Terminal UI for Docker

### Terminal & System
- **ghostty** - Modern GPU-accelerated terminal
- **tzupdate** - Automatic timezone detection

### Applications
- **obsidian-bin** - Note-taking and knowledge management
- **localsend-bin** - Local network file sharing

### Fonts
- **ttf-cascadia-mono-nerd** - Nerd font for terminals
- **ttf-ia-writer** - iA Writer typography font

### Optional Applications (May Fail)
- **pinta** - Simple image editing
- **spotify** - Music streaming
- **zoom** - Video conferencing

### Hardware Utilities
- **steam** - Gaming platform (optional)

---

## Chaotic-AUR (Pre-built Binaries)

- **yay** - AUR helper for package management

---

## Development Runtimes (via mise)

The mise tool manages these language runtimes and tools:

### Programming Languages
- **Node.js** - JavaScript runtime
- **Python** - Python programming language
- **Ruby** - Ruby programming language
- **Go** - Go programming language
- **Java** - Java development kit
- **PHP** - PHP programming language
- **Rust** - Rust programming language (via rustup)

### Development Tools
- **OCaml** - OCaml programming language (via opam)
- **Python uv** - Fast Python package installer

---

## Docker Containers (Optional)

Database services available via Docker:

- **MySQL 8.4** - MySQL database server
- **PostgreSQL 16** - PostgreSQL database server
- **MariaDB 11.8** - MariaDB database server
- **Redis 7** - Redis in-memory database

---

## Web Applications (PWA-style)

Installed as Chromium web apps:

- **WhatsApp** - Web-based messaging (https://web.whatsapp.com/)
- **Google Contacts** - Contact management (https://contacts.google.com/)
- **Google AI Studio** - AI development platform (https://aistudio.google.com)
- **Google Calendar** - Calendar and scheduling (https://calendar.google.com)
- **Google Sheets** - Spreadsheet application (https://sheets.google.com)
- **Claude** - AI assistant (https://claude.ai)

---

## External Installers

### VPN Services
- **Tailscale** - Mesh VPN service (via curl installer) - **REMOVED**

### Session Management
- **uwsm** - Wayland session manager (archived package)

---

## Source Builds

### Hardware Control
- **asdcontrol** - Apple Studio Display brightness control (compiled from source)

---

## Installation Phases

The installation follows this sequence:

1. **Preflight** - AUR setup (yay), base tools, migrations
2. **Configuration** - System settings, power management, networking, graphics drivers
3. **Development** - Terminal tools, programming languages (mise), Docker
4. **Desktop** - Hyprland stack, themes, fonts, hardware support
5. **Applications** - GUI applications, web apps, productivity tools
6. **System Update** - Final package database refresh

---

## Removed Applications

The following applications were present in the original omarchy but have been removed in this minimal version:

### Media & Creative (Removed)
- **OBS Studio** - Streaming and recording software
- **Kdenlive** - Video editing software
- **xournalpp** - PDF annotation and note-taking
- **Typora** - Markdown editor

### Cloud & Security (Removed)
- **Dropbox** - Cloud storage sync
- **1Password** - Password manager
- **Tailscale** - Mesh VPN service

### Editors (Replaced)
- **Neovim + LazyVim** - Replaced with nano
- **Nautilus + sushi** - Replaced with Krusader

---

*This installation creates a complete modern Linux desktop focused on web development with the Hyprland window manager, comprehensive development tools via mise, and a minimal but powerful application suite.*