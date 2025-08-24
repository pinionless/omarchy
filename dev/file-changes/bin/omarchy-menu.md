# bin/omarchy-menu

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All `ghostty` references instead of `alacritty`, `nano` instead of `nvim`, `krusader` instead of `nautilus`, removed service menu items  
**SAFE TO UPDATE**: Menu structure and other functionality can accept upstream changes  
**CONFLICT RESOLUTION**: If upstream adds alacritty/nvim/nautilus/services back, replace according to critical-changes.md

## Change Summary
Multiple system changes: terminal replacement (alacritty→ghostty), editor replacement (nvim→nano), file manager replacement (nautilus→krusader), and removed service menu items

## Diff 1 - Terminal Replacement (alacritty → ghostty)
```diff
 terminal() {
-  alacritty --class Omarchy -e $1
+  ghostty --class=Omarchy -e $1
 }

 present_terminal() {
-  alacritty --class Omarchy -e bash -c "omarchy-show-logo; eval \"$1\"; omarchy-show-done;"
+  ghostty --class=Omarchy -e bash -c "omarchy-show-logo; eval \"$1\"; omarchy-show-done;"
 }

-  *Audio*) alacritty --class=Wiremix -e wiremix ;;
-  *Wifi*) alacritty --class=Impala -e impala ;;
+  *Audio*) ghostty --class=Wiremix -e wiremix ;;
+  *Wifi*) ghostty --class=Impala -e impala ;;
```

## Diff 2 - Editor Replacement (nvim → nano)
```diff
-edit_in_nvim() {
+edit_in_nano() {
   notify-send "Editing config file" "$1"
-  alacritty -e nvim "$1"
+  ghostty -e nano "$1"
 }

-  *Monitors*) edit_in_nvim ~/.config/hypr/monitors.conf ;;
-  *Keybindings*) edit_in_nvim ~/.config/hypr/bindings.conf ;;
-  *Input*) edit_in_nvim ~/.config/hypr/input.conf ;;
+  *Monitors*) edit_in_nano ~/.config/hypr/monitors.conf ;;
+  *Keybindings*) edit_in_nano ~/.config/hypr/bindings.conf ;;
+  *Input*) edit_in_nano ~/.config/hypr/input.conf ;;

-  *Hyprland*) edit_in_nvim ~/.config/hypr/hyprland.conf ;;
-  *Hypridle*) edit_in_nvim ~/.config/hypr/hypridle.conf && omarchy-restart-hypridle ;;
+  *Hyprland*) edit_in_nano ~/.config/hypr/hyprland.conf ;;
+  *Hypridle*) edit_in_nano ~/.config/hypr/hypridle.conf && omarchy-restart-hypridle ;;
```

## Diff 3 - File Manager Replacement (nautilus → krusader)
```diff
-  *Background*) nautilus ~/.config/omarchy/current/theme/backgrounds ;;
+  *Background*) krusader ~/.config/omarchy/current/theme/backgrounds ;;
```

## Diff 4 - Remove Service Menu Items
```diff
-  *Service*) show_install_service_menu ;;

-  case $(menu "Install" "  Dropbox\n  Tailscale") in
-  *Dropbox*) present_terminal omarchy-install-dropbox ;;
-  *Tailscale*) present_terminal omarchy-install-tailscale ;;
+  case $(menu "Install" "  No services available") in
```

## Reasoning
- **Diff 1**: Part of system-wide terminal replacement (change 001)
- **Diff 2**: Part of editor simplification (change 002) - replaced LazyVim/Neovim with nano
- **Diff 3**: Part of file manager replacement (change 003) - replaced Nautilus with Krusader  
- **Diff 4**: Part of bloat removal (change 004) - removed Dropbox/Tailscale service options