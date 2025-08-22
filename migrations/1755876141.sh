#!/bin/bash

# Migration: Replace Nautilus with Krusader
# Date: 2025-08-22
# Change ID: 004

echo "🔄 Migrating from Nautilus to Krusader..."

# Install Krusader if not present
if ! command -v krusader &>/dev/null; then
  echo "📦 Installing Krusader..."
  yay -S --noconfirm --needed krusader
fi

# Remove Nautilus and related packages (optional, user choice)
if command -v nautilus &>/dev/null; then
  echo "⚠️  Found Nautilus installation. You can remove it manually with:"
  echo "   yay -R nautilus sushi nautilus-dropbox"
  echo "   (File picker dialogs will still work via xdg-desktop-portal-gtk)"
fi

# Refresh Hyprland configuration to pick up new keybinding
echo "🔄 Refreshing Hyprland configuration..."
omarchy-refresh-hyprland

echo "✅ Migration complete: Nautilus → Krusader"
echo "💡 Press Super+F to launch Krusader file manager"