#!/bin/bash

# Migration: Remove non-essential media and cloud applications
# Date: 2025-08-22
# Change ID: 005

echo "🔄 Removing non-essential applications for minimal installation..."

# Applications to remove (if installed)
APPS_TO_REMOVE=(
  "obs-studio"
  "kdenlive" 
  "xournalpp"
  "typora"
  "1password-beta"
  "1password-cli"
  "dropbox"
  "dropbox-cli"
  "libappindicator-gtk3"
  "python-gpgme"
  "nautilus-dropbox"
  "tailscale"
)

# Remove installed applications
REMOVED_COUNT=0
for app in "${APPS_TO_REMOVE[@]}"; do
  if pacman -Qi "$app" &>/dev/null || yay -Qi "$app" &>/dev/null; then
    echo "🗑️  Removing $app..."
    yay -R --noconfirm "$app" && ((REMOVED_COUNT++))
  fi
done

if [ $REMOVED_COUNT -eq 0 ]; then
  echo "✅ No applications to remove - system is already minimal"
else
  echo "✅ Removed $REMOVED_COUNT applications"
fi

# Remove application configs if they exist
CONFIG_DIRS=(
  "$HOME/.config/obs-studio"
  "$HOME/.config/kdenlive"
  "$HOME/.config/xournalpp"
  "$HOME/.config/Typora"
  "$HOME/.config/1Password"
  "$HOME/Dropbox"
  "$HOME/.dropbox"
)

echo "🗑️  Cleaning up configuration directories..."
for dir in "${CONFIG_DIRS[@]}"; do
  if [ -d "$dir" ]; then
    echo "   Removing $dir"
    rm -rf "$dir"
  fi
done

# Stop and disable Tailscale if running
if systemctl is-active --quiet tailscaled; then
  echo "🛑 Stopping Tailscale service..."
  sudo systemctl stop tailscaled
  sudo systemctl disable tailscaled
fi

# Stop and disable Dropbox if running
if pgrep -x "dropbox" > /dev/null; then
  echo "🛑 Stopping Dropbox..."
  pkill -x dropbox
fi

echo "✅ Migration complete: Removed non-essential applications"
echo "💡 System is now focused on core development tools"
echo "📖 See APPLICATIONS.md for current application list"