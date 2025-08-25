#!/bin/bash

# Personal application installations
# This file is sourced by xtras.sh and allows adding custom apps
# without modifying upstream files, making syncing easier.

# =============================================================================
# FUNCTION DEFINITIONS
# =============================================================================

# VSCode theme extension installation function (Ticket 004)
install_vscode_theme_extensions() {
  local extensions=(
    "Catppuccin.catppuccin-vsc"
    "enkia.tokyo-night" 
    "jdinhlife.gruvbox"
    "mvllow.rose-pine"
    "arcticicestudio.nord-visual-studio-code"
    "qufiwefefwoyn.kanagawa"
    "sainnhe.everforest"
    "devdatvn.matte-black-theme"
    "sherloach.solarized-osaka"
  )
  
  for extension in "${extensions[@]}"; do
    echo "Installing VSCode extension: $extension"
    code --install-extension "$extension" --force || 
      echo -e "\e[33mFailed to install VSCode extension $extension. Continuing...\e[0m"
  done
  
  echo "VSCode theme extensions installation complete."
}

# =============================================================================
# SECTION 1: INSTALL APPS
# =============================================================================

echo "Installing personal applications..."

if [ -z "$OMARCHY_BARE" ]; then
  # Personal applications for tickets 004, 006, 007, 008
  yay -S --noconfirm --needed \
    visual-studio-code-bin \
    thunderbird \
    firefox \
    nano \
    ghostty \
    krusader
  
  # AUR packages that might be flaky
  for pkg in plexamp-appimage; do
    yay -S --noconfirm --needed "$pkg" ||
      echo -e "\e[31mFailed to install $pkg. Continuing without!\e[0m"
  done
fi

echo "Personal applications installation complete."

# =============================================================================
# SECTION 2: INSTALL EXTENSIONS
# =============================================================================

echo "Installing application extensions..."

if [ -z "$OMARCHY_BARE" ]; then
  # Install VSCode theme extensions (Ticket 004)
  if command -v code &> /dev/null; then
    echo "Installing VSCode theme extensions..."
    install_vscode_theme_extensions
  fi
fi

echo "Application extensions installation complete."

# =============================================================================
# SECTION 3: INSTALL WEBAPPS
# =============================================================================

echo "Installing personal webapps..."

if [ -z "$OMARCHY_BARE" ]; then
  # Custom productivity webapps (moved from main installation for easier upstream syncing)
  omarchy-webapp-install "Google AI Studio" https://aistudio.google.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-ai.png
  omarchy-webapp-install "Google Calendar" https://calendar.google.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-calendar.png
  omarchy-webapp-install "Google Sheets" https://sheets.google.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-sheets.png
  omarchy-webapp-install "Claude" https://claude.ai https://claude.ai/favicon.svg
  
  # Password management
  omarchy-webapp-install "Bitwarden" https://vault.bitwarden.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/bitwarden.png
fi

echo "Personal webapps installation complete."

echo "All personal installations complete."