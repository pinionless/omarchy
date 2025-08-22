#!/bin/bash

# Migration: Replace Neovim/LazyVim with nano
# Date: 2025-08-22
# Change ID: 002

echo "🔄 Migrating from Neovim to nano..."

# Install nano if not present
if ! command -v nano &>/dev/null; then
  echo "📦 Installing nano..."
  yay -S --noconfirm --needed nano
fi

# Remove LazyVim configuration directory
if [ -d ~/.config/nvim ]; then
  echo "🗑️  Removing ~/.config/nvim (LazyVim configuration)..."
  rm -rf ~/.config/nvim
fi

# Optional: Offer to remove neovim packages (user choice)
if command -v nvim &>/dev/null; then
  echo "⚠️  Neovim is still installed. You can remove it manually with:"
  echo "   yay -R nvim luarocks tree-sitter-cli"
fi

# Refresh configuration to pick up new aliases and environment variables
echo "🔄 Configuration will be refreshed on next login or source ~/.bashrc"

echo "✅ Migration complete: Neovim → nano"