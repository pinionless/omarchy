echo "Replace Alacritty terminal emulator with Ghostty"

# Install ghostty and remove alacritty package
if pacman -Q alacritty &>/dev/null; then
  echo "Installing Ghostty and removing Alacritty..."
  yay -S --noconfirm ghostty
  yay -Rs --noconfirm alacritty
fi

# Replace alacritty with ghostty in waybar config
if [[ -f ~/.config/waybar/config.jsonc ]]; then
  if grep -q "alacritty" ~/.config/waybar/config.jsonc; then
    echo "Updating Waybar configuration..."
    sed -i 's|alacritty|ghostty|g' ~/.config/waybar/config.jsonc
    omarchy-restart-waybar
  fi
fi

# Replace alacritty with ghostty in hyprland bindings
if [[ -f ~/.config/hypr/bindings.conf ]]; then
  if grep -q "alacritty" ~/.config/hypr/bindings.conf; then
    echo "Updating Hyprland bindings..."
    sed -i 's|alacritty|ghostty|g' ~/.config/hypr/bindings.conf
  fi
fi

# Update desktop files that use alacritty
if [[ -d ~/.local/share/applications ]]; then
  if grep -l "alacritty" ~/.local/share/applications/*.desktop 2>/dev/null; then
    echo "Updating desktop files..."
    sed -i 's|alacritty|ghostty|g' ~/.local/share/applications/*.desktop 2>/dev/null || true
    # Fix About.desktop font override syntax
    sed -i 's|ghostty -o "font\.size=9"|ghostty --font-size=9|g' ~/.local/share/applications/About.desktop 2>/dev/null || true
  fi
fi

# Remove old alacritty configuration
if [[ -d ~/.config/alacritty ]]; then
  echo "Removing old Alacritty configuration..."
  rm -rf ~/.config/alacritty
fi

# Create ghostty config directory and refresh configuration
if [[ ! -d ~/.config/ghostty ]]; then
  echo "Setting up Ghostty configuration..."
  mkdir -p ~/.config/ghostty
fi

# Refresh ghostty config from omarchy defaults
omarchy-refresh-config ghostty/config

echo "Migration complete! Alacritty has been replaced with Ghostty."