# Starship Theme Color Guide

This document defines the color palettes for each Omarchy theme to be used in starship configurations. Each theme uses 4 primary colors plus success/error colors.

## Color Usage Guide

- **color_text**: Primary text color (usually foreground)
- **color_A**: Primary accent color (OS icon, username background)
- **color_B**: Secondary accent color (directory background)
- **color_C**: Tertiary accent color (git info background)

## ⚠️ Contrast Requirements

**CRITICAL**: `color_text` must have sufficient contrast against `color_A`, `color_B`, and `color_C` backgrounds for readability.

- ✅ Light text (`#ffffff`, `#f0f0f0`) works on dark/medium backgrounds
- ✅ Dark text (`#000000`, `#2e2e2e`) works on light backgrounds  
- ❌ Never use similar brightness levels (dark text on dark bg, light text on light bg)

## Theme Color Definitions

### tokyo-night
```toml
color_text = '#a9b1d6'    # Foreground - light blue-gray
color_A = '#7aa2f7'       # Blue - primary accent
color_B = '#9ece6a'       # Green - secondary accent  
color_C = '#e0af68'       # Yellow - tertiary accent
```

### catppuccin
```toml
color_text = '#cad3f5'    # Foreground - light lavender
color_A = '#8aadf4'       # Blue - primary accent
color_B = '#a6da95'       # Green - secondary accent
color_C = '#f5bde6'       # Pink - tertiary accent
```

### gruvbox
```toml
color_text = '#d4be98'    # Foreground - warm beige
color_A = '#d3869b'       # Purple - primary accent
color_B = '#a9b665'       # Green - secondary accent
color_C = '#7daea3'       # Aqua - tertiary accent
```

### catppuccin-latte (Light Theme)
```toml
color_text = '#ffffff'    # White text for visibility on dark backgrounds
color_A = '#1e66f5'       # Blue - primary accent
color_B = '#40a02b'       # Green - secondary accent
color_C = '#ea76cb'       # Pink - tertiary accent
```

### nord
```toml
color_text = '#d8dee9'    # Snow Storm - light gray
color_A = '#5e81ac'       # Frost - blue
color_B = '#a3be8c'       # Aurora - green
color_C = '#88c0d0'       # Frost - cyan
```

### rose-pine
```toml
color_text = '#e0def4'    # Text - soft white
color_A = '#c4a7e7'       # Iris - purple
color_B = '#9ccfd8'       # Foam - cyan
color_C = '#f6c177'       # Gold - yellow
```

### everforest
```toml
color_text = '#d3c6aa'    # Foreground - warm gray
color_A = '#7fbbb3'       # Aqua - primary accent
color_B = '#a7c080'       # Green - secondary accent
color_C = '#dbbc7f'       # Yellow - tertiary accent
```

### kanagawa
```toml
color_text = '#dcd7ba'    # Fuji White
color_A = '#7e9cd8'       # Crystal Blue
color_B = '#98bb6c'       # Spring Green
color_C = '#e6c384'       # Autumn Yellow
```

### matte-black
```toml
color_text = '#ffffff'    # Pure white text
color_A = '#1a1a1a'       # Dark gray - good contrast with white text
color_B = '#2d2d2d'       # Medium gray - good contrast with white text
color_C = '#404040'       # Lighter gray - good contrast with white text
```

### osaka-jade
```toml
color_text = '#a9b1d6'    # Similar to Tokyo Night
color_A = '#73daca'       # Jade green - primary accent
color_B = '#9ece6a'       # Lime green
color_C = '#bb9af7'       # Purple accent
```

### ristretto
```toml
color_text = '#e6e9ef'    # Light gray text
color_A = '#8caaee'       # Blue accent
color_B = '#a6d189'       # Green accent
color_C = '#f4b8e4'       # Pink accent
```

## Universal Colors (All Themes)
```toml
color_success = '#33cc38'  # Standard success green
color_error = '#cc241d'    # Standard error red
```

## Current Issue
Your current catppuccin starship.toml uses these colors:
```toml
color_text = '#fbf1c7'    # ❌ This is Gruvbox text, not Catppuccin!
color_A = '#b16286'       # ❌ This is Gruvbox purple
color_B = '#4a6e4b'       # ❌ This doesn't match any theme
color_C = '#458588'       # ❌ This is Gruvbox aqua
```

Should be:
```toml
color_text = '#cad3f5'    # ✅ Catppuccin text
color_A = '#8aadf4'       # ✅ Catppuccin blue
color_B = '#a6da95'       # ✅ Catppuccin green  
color_C = '#f5bde6'       # ✅ Catppuccin pink
```