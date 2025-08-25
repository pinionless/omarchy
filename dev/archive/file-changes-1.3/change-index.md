# Change Index

Index of all files customized in this fork.

## Files Modified

### /
- [`boot.sh`](boot.sh.md) - Changed default repo to pinionless/omarchy-minimal
- [`install.sh`](install.sh.md) - Editor replacement: nvim.sh → nano.sh

### applications/
- [`applications/About.desktop`](applications/About.desktop.md) - Terminal replacement: Alacritty → Ghostty
- [`applications/Activity.desktop`](applications/Activity.desktop.md) - Terminal replacement: Alacritty → Ghostty  
- [`applications/Docker.desktop`](applications/Docker.desktop.md) - Terminal replacement: Alacritty → Ghostty
- [`applications/wiremix.desktop`](applications/wiremix.desktop.md) - Terminal replacement: Alacritty → Ghostty

### bin/
- [`bin/omarchy-cmd-screensaver`](bin/omarchy-cmd-screensaver.md) - Terminal replacement: Alacritty → Ghostty
- [`bin/omarchy-dev-add-migration`](bin/omarchy-dev-add-migration.md) - Editor replacement: nvim → nano
- [`bin/omarchy-font-current`](bin/omarchy-font-current.md) - Terminal replacement: Alacritty → Ghostty
- [`bin/omarchy-font-set`](bin/omarchy-font-set.md) - Terminal replacement: Alacritty → Ghostty
- [`bin/omarchy-launch-screensaver`](bin/omarchy-launch-screensaver.md) - Terminal replacement: Alacritty → Ghostty
- [`bin/omarchy-lock-screen`](bin/omarchy-lock-screen.md) - Terminal replacement + Password manager replacement
- [`bin/omarchy-menu`](bin/omarchy-menu.md) - Multiple: Terminal, Editor, File manager, Service removal
- [`bin/omarchy-theme-set`](bin/omarchy-theme-set.md) - Terminal replacement + VSCode theme integration

### config/
- [`config/hypr/bindings.conf`](config/hypr/bindings.conf.md) - Multiple: Terminal, File manager, Editor, Applications, Webapps
- [`config/waybar/config.jsonc`](config/waybar/config.jsonc.md) - Terminal replacement + Media player integration

### default/
- [`default/bash/aliases`](default/bash/aliases.md) - Editor replacement: nvim → nano in n() function
- [`default/bash/envs`](default/bash/envs.md) - Editor replacement: EDITOR=nvim → EDITOR=nano
- [`default/hypr/apps/system.conf`](default/hypr/apps/system.conf.md) - Removed window rules for Nautilus/Zoom
- [`default/hypr/bindings.conf`](default/hypr/bindings.conf.md) - Editor replacement: nvim → nano keybinding

### install/
- [`install/apps/webapps.sh`](install/apps/webapps.sh.md) - Streamlined webapps to minimal set
- [`install/apps/xtras.sh`](install/apps/xtras.sh.md) - Added personal.sh integration
- [`install/desktop/desktop.sh`](install/desktop/desktop.sh.md) - Modified for streamlined system
- [`install/desktop/theme.sh`](install/desktop/theme.sh.md) - Updated for Ghostty theme support
- [`install/development/terminal.sh`](install/development/terminal.sh.md) - Terminal replacement: alacritty → ghostty

## Deleted Files

### applications/
- [`applications/nvim.desktop`](applications/nvim.desktop.md) - Removed Neovim desktop file
- [`applications/xtras/Zoom.desktop`](applications/xtras/Zoom.desktop.md) - Removed Zoom desktop file
- [`applications/xtras/dropbox.desktop`](applications/xtras/dropbox.desktop.md) - Removed Dropbox desktop file
- [`applications/xtras/typora.desktop`](applications/xtras/typora.desktop.md) - Removed Typora desktop file

### bin/
- [`bin/omarchy-install-dropbox`](bin/omarchy-install-dropbox.md) - Removed Dropbox installer
- [`bin/omarchy-install-tailscale`](bin/omarchy-install-tailscale.md) - Removed Tailscale installer

### config/
- [`config/alacritty/alacritty.toml`](config/alacritty/alacritty.toml.md) - Removed Alacritty main config
- [`config/nvim/lazyvim.json`](config/nvim/lazyvim.json.md) - Removed LazyVim configuration
- [`config/nvim/lua/plugins/snacks-animated-scrolling-off.lua`](config/nvim/lua/plugins/snacks-animated-scrolling-off.lua.md) - Removed Neovim plugin config
- [`config/nvim/lua/plugins/theme.lua`](config/nvim/lua/plugins/theme.lua.md) - Removed Neovim theme plugin config
- [`config/nvim/plugin/after/transparency.lua`](config/nvim/plugin/after/transparency.lua.md) - Removed Neovim transparency plugin config
- [`config/xournalpp/settings.xml`](config/xournalpp/settings.xml.md) - Removed Xournal++ settings

### default/
- [`default/alacritty/screensaver.toml`](default/alacritty/screensaver.toml.md) - Removed Alacritty screensaver template

### install/
- [`install/development/nvim.sh`](install/development/nvim.sh.md) - Removed Neovim installation script

### migrations/
- All 84 upstream migration files deleted - see critical-changes.md for policy

### themes/
- [`themes/catppuccin/alacritty.toml`](themes/catppuccin/alacritty.toml.md) - Removed Alacritty theme
- [`themes/catppuccin/neovim.lua`](themes/catppuccin/neovim.lua.md) - Removed Neovim theme
- [`themes/catppuccin-latte/alacritty.toml`](themes/catppuccin-latte/alacritty.toml.md) - Removed Alacritty theme
- [`themes/catppuccin-latte/neovim.lua`](themes/catppuccin-latte/neovim.lua.md) - Removed Neovim theme
- [`themes/everforest/alacritty.toml`](themes/everforest/alacritty.toml.md) - Removed Alacritty theme
- [`themes/everforest/neovim.lua`](themes/everforest/neovim.lua.md) - Removed Neovim theme
- [`themes/gruvbox/alacritty.toml`](themes/gruvbox/alacritty.toml.md) - Removed Alacritty theme
- [`themes/gruvbox/neovim.lua`](themes/gruvbox/neovim.lua.md) - Removed Neovim theme
- [`themes/kanagawa/alacritty.toml`](themes/kanagawa/alacritty.toml.md) - Removed Alacritty theme
- [`themes/kanagawa/neovim.lua`](themes/kanagawa/neovim.lua.md) - Removed Neovim theme
- [`themes/matte-black/alacritty.toml`](themes/matte-black/alacritty.toml.md) - Removed Alacritty theme
- [`themes/matte-black/neovim.lua`](themes/matte-black/neovim.lua.md) - Removed Neovim theme
- [`themes/nord/alacritty.toml`](themes/nord/alacritty.toml.md) - Removed Alacritty theme
- [`themes/nord/neovim.lua`](themes/nord/neovim.lua.md) - Removed Neovim theme
- [`themes/osaka-jade/alacritty.toml`](themes/osaka-jade/alacritty.toml.md) - Removed Alacritty theme
- [`themes/osaka-jade/neovim.lua`](themes/osaka-jade/neovim.lua.md) - Removed Neovim theme
- [`themes/ristretto/alacritty.toml`](themes/ristretto/alacritty.toml.md) - Removed Alacritty theme
- [`themes/ristretto/neovim.lua`](themes/ristretto/neovim.lua.md) - Removed Neovim theme
- [`themes/rose-pine/alacritty.toml`](themes/rose-pine/alacritty.toml.md) - Removed Alacritty theme
- [`themes/rose-pine/neovim.lua`](themes/rose-pine/neovim.lua.md) - Removed Neovim theme
- [`themes/tokyo-night/alacritty.toml`](themes/tokyo-night/alacritty.toml.md) - Removed Alacritty theme
- [`themes/tokyo-night/neovim.lua`](themes/tokyo-night/neovim.lua.md) - Removed Neovim theme

## New Files

### bin/
- [`bin/omarchy-vscode-theme-handler`](bin/omarchy-vscode-theme-handler.md) - Added VSCode theme integration handler

### config/
- [`config/ghostty/config`](config/ghostty/config.md) - Added Ghostty main configuration

### default/
- [`default/ghostty/screensaver.config`](default/ghostty/screensaver.config.md) - Added Ghostty screensaver template

### install/
- [`install/apps/personal.sh`](install/apps/personal.sh.md) - Added personal apps extension system
- [`install/development/nano.sh`](install/development/nano.sh.md) - Added nano installation script

### themes/
- [`themes/catppuccin/ghostty.config`](themes/catppuccin/ghostty.config.md) - Added Ghostty theme
- [`themes/catppuccin-latte/ghostty.config`](themes/catppuccin-latte/ghostty.config.md) - Added Ghostty theme
- [`themes/everforest/ghostty.config`](themes/everforest/ghostty.config.md) - Added Ghostty theme
- [`themes/gruvbox/ghostty.config`](themes/gruvbox/ghostty.config.md) - Added Ghostty theme
- [`themes/kanagawa/ghostty.config`](themes/kanagawa/ghostty.config.md) - Added Ghostty theme
- [`themes/matte-black/ghostty.config`](themes/matte-black/ghostty.config.md) - Added Ghostty theme
- [`themes/nord/ghostty.config`](themes/nord/ghostty.config.md) - Added Ghostty theme
- [`themes/osaka-jade/ghostty.config`](themes/osaka-jade/ghostty.config.md) - Added Ghostty theme
- [`themes/ristretto/ghostty.config`](themes/ristretto/ghostty.config.md) - Added Ghostty theme
- [`themes/rose-pine/ghostty.config`](themes/rose-pine/ghostty.config.md) - Added Ghostty theme
- [`themes/tokyo-night/ghostty.config`](themes/tokyo-night/ghostty.config.md) - Added Ghostty theme