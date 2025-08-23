#!/bin/bash

# Personal application installations
# This file is sourced by xtras.sh and allows adding custom apps
# without modifying upstream files, making syncing easier.

echo "Installing personal applications..."

if [ -z "$OMARCHY_BARE" ]; then
  # Add your personal package installations here
  # Example:
  # yay -S --noconfirm --needed \
  #   your-package-name \
  #   another-package
  
  # For packages that might fail, use individual installs:
  # for pkg in flaky-package1 flaky-package2; do
  #   yay -S --noconfirm --needed "$pkg" ||
  #     echo -e "\e[31mFailed to install $pkg. Continuing without!\e[0m"
  # done
  
  echo "No personal packages configured yet."
fi

# Personal webapp installations
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

echo "Personal applications and webapps installation complete."