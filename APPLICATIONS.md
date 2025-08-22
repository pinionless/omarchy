# Omarchy Applications List

This document lists all applications and packages installed by the omarchy-minimal setup script, organized by category.

## Desktop Environment

### Window Manager & Core
- **hyprland** - Modern Wayland compositor and window manager
- **hyprshot** - Screenshot utility for Hyprland
- **hyprpicker** - Color picker utility
- **hyprlock** - Screen locker
- **hypridle** - Idle management daemon
- **hyprsunset** - Blue light filter/night mode
- **hyprland-qtutils** - Qt utilities for Hyprland integration

### Status Bar & Launcher
- **waybar** - Customizable status bar for Wayland
- **walker-bin** (AUR) - Application launcher and dmenu replacement
- **libqalculate** - Calculator engine for walker

### Desktop Integration
- **xdg-desktop-portal-hyprland** - Desktop portal for Hyprland
- **xdg-desktop-portal-gtk** - GTK desktop portal (file pickers, etc.)
- **swaybg** - Wallpaper/background setter
- **mako** - Notification daemon
- **swayosd** - On-screen display for volume/brightness changes

## Applications

### File Management
- **krusader** - Advanced dual-pane file manager
- **nautilus** - GNOME file manager (legacy, being replaced)
- **sushi** - File previewer for nautilus (legacy)
- **gvfs-mtp** - MTP device support for file managers
- **ffmpegthumbnailer** - Video thumbnail generator

### Web & Communication
- **chromium** - Open-source web browser
- **signal-desktop** - Secure messaging application
- **localsend-bin** (AUR) - Local network file sharing

### Media & Graphics
- **mpv** - Lightweight video player
- **imv** - Image viewer for Wayland
- **evince** - PDF document viewer
- **obs-studio** - Streaming and screen recording
- **kdenlive** - Video editing software
- **pinta** - Simple image editing (optional install)

### Productivity & Office
- **obsidian-bin** (AUR) - Note-taking and knowledge management
- **libreoffice** - Office suite (documents, spreadsheets, presentations)
- **xournalpp** - PDF annotation and handwritten notes
- **gnome-calculator** - Calculator application

### Screenshots & Recording
- **slurp** - Screen region selector
- **satty** (AUR) - Screenshot annotation tool
- **wf-recorder** - Screen recorder (NVIDIA systems)
- **wl-screenrec** - Screen recorder (non-NVIDIA systems)

## Web Applications (PWA-style)
- **WhatsApp** - Web-based messaging
- **Google Contacts** - Contact management
- **Google AI Studio** - AI development platform
- **Google Calendar** - Calendar and scheduling
- **Google Sheets** - Spreadsheet application
- **Claude** - AI assistant

## Development Tools

### Version Control & Project Management
- **git** - Distributed version control system
- **github-cli** - GitHub command line interface
- **lazygit** - Terminal UI for git commands
- **lazydocker-bin** (AUR) - Terminal UI for Docker

### Build Tools & Compilers
- **base-devel** - Essential build tools (make, gcc, etc.)
- **cargo** - Rust package manager and build tool
- **clang llvm** - LLVM compiler infrastructure
- **gcc14** - Legacy GCC version for compatibility

### Development Environment
- **mise** - Development tool version manager (replaces asdf)
- **docker docker-compose docker-buildx** - Container platform
- **mariadb-libs postgresql-libs** - Database client libraries

### Text Editor
- **nano** - Simple terminal text editor

## Terminal & CLI Tools

### Terminal Emulator
- **ghostty** (AUR) - Modern GPU-accelerated terminal

### System Information & Monitoring
- **fastfetch** - System information display
- **btop** - Modern system monitor and process viewer
- **brightnessctl** - Screen brightness control
- **playerctl** - Media player control via CLI

### File Operations & Navigation
- **fd** - Modern find replacement
- **eza** - Modern ls replacement with colors and icons
- **fzf** - Fuzzy finder for files and commands
- **ripgrep** - Fast text search tool
- **zoxide** - Smart directory jumper (cd replacement)
- **bat** - Syntax-highlighted cat replacement
- **wl-clipboard** - Wayland clipboard utilities
- **wl-clip-persist** - Clipboard persistence for Wayland

### Network & System Utilities
- **wget curl unzip** - Download and archive utilities
- **jq** - JSON processor and query tool
- **xmlstarlet** - XML processing toolkit
- **inetutils** - Network utilities (ping, telnet, etc.)
- **plocate** - Fast file locating system

### Documentation & Help
- **man tldr less whois** - Documentation and help tools
- **bash-completion** - Enhanced bash tab completion
- **gum** - Interactive shell components and prompts
- **impala** - TUI for Linux commands

## Audio & Media Control

### Audio System
- **pamixer** - PulseAudio/PipeWire mixer
- **wiremix** (AUR) - PipeWire mixer interface
- **wireplumber** - PipeWire session manager

## System Services & Authentication

### Authentication & Security
- **polkit-gnome** - PolicyKit authentication agent
- **gnome-keyring** - Secure credential storage

### Power & Hardware Management
- **power-profiles-daemon** - System power management
- **ufw ufw-docker** - Uncomplicated Firewall
- **tzupdate** (AUR) - Automatic timezone detection

### Boot & System
- **plymouth** - Boot splash screen system
- **uwsm** - Wayland session manager

### Printing System
- **cups cups-pdf cups-filters cups-browsed** - Complete printing stack
- **system-config-printer** - Printer configuration GUI
- **avahi nss-mdns** - Network printer discovery

### Networking
- **iwd** - Wireless network daemon (if needed)

## Input & Internationalization
- **fcitx5 fcitx5-gtk fcitx5-qt** - Input method framework for multilingual typing

## Fonts & Typography
- **ttf-font-awesome** - Icon font for UI elements
- **ttf-cascadia-mono-nerd** (AUR) - Monospace font with programming ligatures
- **ttf-ia-writer** (AUR) - Clean typography font
- **noto-fonts noto-fonts-emoji** - Google's comprehensive font family
- **ttf-jetbrains-mono** - JetBrains programming font (if not OMARCHY_BARE)
- **noto-fonts-cjk noto-fonts-extra** - Extended international fonts (if not OMARCHY_BARE)

## Themes & Appearance
- **kvantum-qt5** - Qt5 theming engine
- **gnome-themes-extra** - Additional GTK themes (includes Adwaita-dark)
- **yaru-icon-theme** - Ubuntu's Yaru icon set

## Bluetooth & Hardware
- **blueberry** - Bluetooth device management GUI

## Optional/Conditional Installs

### Graphics (NVIDIA Systems)
- **nvidia-open-dkms** or **nvidia-dkms** - NVIDIA kernel drivers
- **nvidia-utils lib32-nvidia-utils** - NVIDIA userspace libraries
- **egl-wayland** - EGL Wayland support for NVIDIA
- **libva-nvidia-driver** - Hardware video acceleration
- **qt5-wayland qt6-wayland** - Qt Wayland support

### Entertainment & Gaming
- **steam** - Gaming platform (via omarchy-install-steam)
- **spotify** (AUR) - Music streaming (optional, may fail)
- **zoom** (AUR) - Video conferencing (optional, may fail)

### Security & Authentication
- **1password-beta 1password-cli** (AUR) - Password manager (optional, may fail)
- **fprintd usbutils** - Fingerprint authentication (via omarchy-setup-fingerprint)
- **libfido2 pam-u2f** - FIDO2/WebAuthn hardware keys (via omarchy-setup-fido2)

### Cloud Storage
- **dropbox dropbox-cli libappindicator-gtk3 python-gpgme** - Dropbox sync (via omarchy-install-dropbox)

### VPN & Networking
- **tailscale** - Mesh VPN service (via external installer)

### Specialized Hardware
- **asdcontrol** - Apple Studio Display brightness control (source build)

### Creative Software
- **typora** (AUR) - Markdown editor (optional, may fail)

## Docker Database Services (Optional)
- **MySQL 8.4** - MySQL database server container
- **PostgreSQL 16** - PostgreSQL database server container
- **MariaDB 11.8** - MariaDB database server container
- **Redis 7** - Redis in-memory database container

## Language Runtimes (via mise)
The following development environments are available through the mise version manager:
- **Ruby** - Ruby programming language
- **Node.js** - JavaScript runtime
- **Python** - Python programming language
- **Go** - Go programming language
- **Java** - Java development kit
- **PHP** - PHP programming language
- **Other languages** - Many more available via mise plugins

## Package Sources
- **Official Arch Repositories** - Most packages (~70)
- **AUR (Arch User Repository)** - Community packages (~25)
- **Chaotic-AUR** - Pre-built AUR packages (yay)
- **Source Builds** - Custom compiled software (asdcontrol)
- **External Installers** - Specialized installation scripts (Tailscale, Rust toolchain)
- **Docker Hub** - Container images for services

---

*This list represents the complete application suite installed by omarchy-minimal as of the latest version. Some applications may be optional or conditional based on hardware detection or user choices during installation.*