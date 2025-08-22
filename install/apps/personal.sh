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

echo "Personal applications installation complete."