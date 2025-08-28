# TICKET-004: Install VS Code

## User Request
install VSCODE

## Q&A
**VS Code Installation:**
- Q: Do you want the official Microsoft VS Code or the open-source Code - OSS version?
- A: official
- Q: Should this be installed via personal.sh extension or added to main installation?
- A: personal.sh
- Q: Any specific VS Code extensions you want pre-installed?
- A: no
- Q: Should this replace nano as the default text editor, or be available alongside it?
- A: nano - default, vs extra

**Integration with Omarchy:**
- Q: Should VS Code be bound to a keyboard shortcut (like Super+V)?
- A: YES
- Q: Do you want it configured to work with the current theme system?
- A: if its possible we find proper vscode themes

**Installation method:**
- Q: Install from AUR (visual-studio-code-bin) or official repository?
- A: Tell me what is better
- Q: Any specific version requirements?
- A: new

**Keyboard shortcut:**
- Q: Which key combination would you like for VS Code? (Super+V, Super+C, or something else?)
- A: Super V if free
- Q: Current bindings: Super+N=nano, Super+O=Obsidian, Super+F=file manager
- A: (Super+V confirmed available)

**Installation method recommendation:**
- Q: Which do you prefer: official Microsoft build with telemetry, or open-source community build?
- A: AUR

## Description
Install official Microsoft VS Code via AUR and integrate it into the Omarchy system as an additional code editor alongside nano. VS Code will be available via keyboard shortcut and configured to work with Omarchy's theme system using official VSCode theme extensions.

Key requirements:
- Install visual-studio-code-bin from AUR via personal.sh
- Add Super+V keyboard binding for VS Code
- Keep nano as the default text editor (Super+N)
- Install all VSCode theme extensions matching Omarchy themes
- Integrate automatic theme switching via settings.json modification

## Implementation Details

### Theme Extension Installation
During VSCode installation, install the following theme extensions to match all Omarchy themes:

**Official Theme Extensions:**
- **Catppuccin**: `Catppuccin.catppuccin-vsc` (Mocha, Macchiato, Frappe, Latte variants)
- **Tokyo Night**: `enkia.tokyo-night`
- **Gruvbox**: `jdinhlife.gruvbox` 
- **Rose Pine**: `Jinergenkai.rosepine`
- **Nord**: `arcticicestudio.nord-visual-studio-code`
- **Kanagawa**: `Huka.kanagawa-theme`
- **Everforest**: `sainnhe.everforest`
- **Matte Black**: `CleanThemes.matte-black-theme`
- **Solarized Osaka**: `sherloach.solarized-osaka`

**Theme Substitutions:**
- **Osaka Jade**: `sherloach.solarized-osaka` (Solarized Osaka - closest match for jade/green theme)
- **Ristretto**: Use Catppuccin Mocha variant (warm dark colors match Ristretto's brownish palette)

### Theme Switching Integration
- Modify `omarchy-theme-set` script to update VSCode settings.json
- Set `workbench.colorTheme` property to appropriate theme name
- Theme changes apply instantly in VSCode (no restart required)

**Theme Name Mapping:**
```bash
case "$theme_name" in
  "catppuccin") vscode_theme="Catppuccin Mocha" ;;
  "catppuccin-latte") vscode_theme="Catppuccin Latte" ;;
  "tokyo-night") vscode_theme="Tokyo Night" ;;
  "gruvbox") vscode_theme="Gruvbox Dark Medium" ;;
  "rose-pine") vscode_theme="Rose Pine" ;;
  "nord") vscode_theme="Nord" ;;
  "kanagawa") vscode_theme="Kanagawa" ;;
  "everforest") vscode_theme="Everforest Dark" ;;
  "matte-black") vscode_theme="Matte Black Theme" ;;
  "osaka-jade") vscode_theme="Solarized Osaka" ;;
  "ristretto") vscode_theme="Catppuccin Mocha" ;;
esac
```

## Acceptance Criteria
- [ ] visual-studio-code-bin package installed via personal.sh
- [ ] Super+V keyboard binding added to launch VS Code
- [ ] VS Code launches successfully from keybinding
- [ ] nano remains default text editor (Super+N unchanged)
- [ ] All matching VSCode theme extensions installed automatically
- [ ] Theme switching integration added to omarchy-theme-set script
- [ ] VSCode theme changes automatically when Omarchy theme changes
- [ ] Installation works for both fresh installs and existing systems
- [ ] VS Code installation documented in personal apps pattern
- [ ] Keyboard binding documented

## Priority
Medium

## Status
Done

## Preparation

### Requirements Analysis
- **Install VS Code**: via AUR `visual-studio-code-bin` package through personal.sh extension system
- **Keyboard Binding**: Add Super+V to hypr/bindings.conf (confirmed available, not conflicting)
- **Theme Integration**: Install all matching VSCode theme extensions and modify omarchy-theme-set script
- **Keep nano default**: VS Code is additional editor, not replacement

### Key Findings and Considerations
1. **Installation Pattern**: Omarchy uses personal.sh for custom app installations to avoid upstream conflicts
2. **Keyboard Bindings**: Located in config/hypr/bindings.conf, Super+V is available
3. **Theme System**: omarchy-theme-set script handles theme switching, needs VSCode integration
4. **Available Themes**: 11 themes total (catppuccin, catppuccin-latte, everforest, gruvbox, kanagawa, matte-black, nord, osaka-jade, ristretto, rose-pine, tokyo-night)
5. **Application Launch Pattern**: Uses `uwsm app -- <application>` for GUI applications

### Approach Decisions
- Add VS Code installation to personal.sh with error handling like other AUR packages
- Add keyboard binding following existing pattern in bindings.conf
- Extend omarchy-theme-set script with VSCode settings.json modification function
- Install theme extensions via VS Code CLI during initial setup

## Architecture

### Component Design

**1. Package Installation Component (`personal.sh` modification)**
- Location: `install/apps/personal.sh`
- Function: Add VS Code installation with error handling pattern
- Pattern: Follow existing AUR package installation (like plexamp-appimage)
- Implementation: `yay -S --noconfirm --needed visual-studio-code-bin`

**2. Keyboard Binding Component (`bindings.conf` modification)**
- Location: `config/hypr/bindings.conf` 
- Function: Add Super+V binding for VS Code launch
- Pattern: Follow existing application bindings format
- Implementation: `bindd = SUPER, V, VS Code, exec, uwsm app -- code`

**3. Theme Extension Installation Function**
- Location: New function in personal.sh or separate script
- Function: Install all VSCode theme extensions matching Omarchy themes
- Implementation: Use `code --install-extension <extension-id>` CLI commands
- Extensions to install:
  - Catppuccin: `Catppuccin.catppuccin-vsc`
  - Tokyo Night: `enkia.tokyo-night`
  - Gruvbox: `jdinhlife.gruvbox`
  - Rose Pine: `jdinhlife.rose-pine`
  - Nord: `arcticicestudio.nord-visual-studio-code`
  - Kanagawa: `qufiwefefwoyn.kanagawa`
  - Everforest: `sainnhe.everforest`
  - Matte Black: `devdatvn.matte-black-theme`
  - Solarized Osaka: `sherloach.solarized-osaka`

**4. Theme Integration Component (minimal `omarchy-theme-set` modification)**
- Location: New file `bin/omarchy-vscode-theme-handler` + minimal hook in `bin/omarchy-theme-set`
- Function: Separate VSCode theme handler to minimize upstream modifications
- Implementation: 
  - Create standalone `omarchy-vscode-theme-handler` script
  - Add single line in `omarchy-theme-set` to source/execute handler
- Settings file: `~/.config/Code/User/settings.json`

### Interface Definitions

**VSCode Theme Handler Script (`bin/omarchy-vscode-theme-handler`)**
```bash
#!/bin/bash
# omarchy-vscode-theme-handler: Updates VSCode theme when Omarchy theme changes
# This script is called by omarchy-theme-set to keep upstream modifications minimal

omarchy_update_vscode_theme() {
  local theme_name="$1"
  local vscode_settings="$HOME/.config/Code/User/settings.json"
  local vscode_theme=""
  
  # Only proceed if VSCode is installed
  if ! command -v code &> /dev/null; then
    return 0
  fi
  
  case "$theme_name" in
    "catppuccin") vscode_theme="Catppuccin Mocha" ;;
    "catppuccin-latte") vscode_theme="Catppuccin Latte" ;;
    "tokyo-night") vscode_theme="Tokyo Night" ;;
    "gruvbox") vscode_theme="Gruvbox Dark Medium" ;;
    "rose-pine") vscode_theme="Rosé Pine" ;;
    "nord") vscode_theme="Nord" ;;
    "kanagawa") vscode_theme="Kanagawa" ;;
    "everforest") vscode_theme="Everforest Dark" ;;
    "matte-black") vscode_theme="Matte Black" ;;
    "osaka-jade") vscode_theme="Solarized Osaka" ;;
    "ristretto") vscode_theme="Catppuccin Mocha" ;;
    *) return 0 ;;  # Skip unknown themes
  esac
  
  # Update or create settings.json with theme
  if [[ -f "$vscode_settings" ]]; then
    # Update existing settings
    jq --arg theme "$vscode_theme" '.["workbench.colorTheme"] = $theme' "$vscode_settings" > "${vscode_settings}.tmp" && mv "${vscode_settings}.tmp" "$vscode_settings"
  else
    # Create new settings file
    mkdir -p "$(dirname "$vscode_settings")"
    echo "{\"workbench.colorTheme\": \"$vscode_theme\"}" > "$vscode_settings"
  fi
}

# Execute the function if called with theme name
if [[ "$1" ]]; then
  omarchy_update_vscode_theme "$1"
fi
```

**Minimal Hook in `omarchy-theme-set`**
```bash
# Add this single line near the end of omarchy-theme-set, after theme symlink update:
[[ -x "$HOME/.local/share/omarchy/bin/omarchy-vscode-theme-handler" ]] && "$HOME/.local/share/omarchy/bin/omarchy-vscode-theme-handler" "$THEME_NAME"
```

**VSCode Extension Installation Function** 
```bash
install_vscode_theme_extensions() {
  echo "Installing VSCode theme extensions..."
  
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
    code --install-extension "$extension" --force || echo "Failed to install $extension"
  done
}
```

### Implementation Approach

**Phase 1: Package Installation**
1. Modify `install/apps/personal.sh` to include visual-studio-code-bin
2. Add keyboard binding to `config/hypr/bindings.conf`
3. Test basic VS Code installation and launch

**Phase 2: Theme Integration**
1. Add theme extension installation function to personal.sh
2. Modify `bin/omarchy-theme-set` with VSCode theme update function
3. Test theme switching integration

**Phase 3: Testing & Validation**
1. Verify VS Code launches with Super+V
2. Test theme extension installation  
3. Validate theme switching updates VSCode automatically
4. Confirm nano remains default editor

## TODOWrite
[Placeholder. Leave empty.]