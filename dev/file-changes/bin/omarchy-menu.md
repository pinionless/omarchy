# bin/omarchy-menu

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal replacement (alacritty→ghostty) as per critical-changes.md, Editor replacement (nvim→nano), File manager replacement (nautilus→krusader)  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Terminal/editor replacements as per critical-changes.md

## Diff
```diff
@@ -22,16 +22,16 @@
 }
 
 terminal() {
-  alacritty --class Omarchy -e "$@"
+  ghostty --class=Omarchy -e "$@"
 }
 
 present_terminal() {
-  alacritty --class Omarchy -e bash -c "omarchy-show-logo; eval \"$1\"; omarchy-show-done;"
+  ghostty --class=Omarchy -e bash -c "omarchy-show-logo; eval \"$1\"; omarchy-show-done;"
 }
 
-edit_in_nvim() {
+edit_in_nano() {
   notify-send "Editing config file" "$1"
-  alacritty -e nvim "$1"
+  ghostty -e nano "$1"
 }
 
 install() {
@@ -71,8 +71,8 @@
   *Theme*) show_theme_menu ;;
   *Font*) show_font_menu ;;
   *Background*) omarchy-theme-bg-next ;;
-  *Screensaver*) edit_in_nvim ~/.config/omarchy/branding/screensaver.txt ;;
-  *About*) edit_in_nvim ~/.config/omarchy/branding/about.txt ;;
+  *Screensaver*) edit_in_nano ~/.config/omarchy/branding/screensaver.txt ;;
+  *About*) edit_in_nano ~/.config/omarchy/branding/about.txt ;;
   *) show_main_menu ;;
   esac
 }
@@ -138,19 +138,19 @@
   options="$options\n󰱔  DNS\n  Config\n󰈷  Fingerprint\n  Fido2"
 
   case $(menu "Setup" "$options") in
-  *Audio*) alacritty --class=Wiremix -e wiremix ;;
+  *Audio*) ghostty --class=Wiremix -e wiremix ;;
   *Wifi*)
     rfkill unblock wifi
-    alacritty --class=Impala -e impala
+    ghostty --class=Impala -e impala
     ;;
   *Bluetooth*)
     rfkill unblock bluetooth
     blueberry
     ;;
   *Power*) show_setup_power_menu ;;
-  *Monitors*) edit_in_nvim ~/.config/hypr/monitors.conf ;;
-  *Keybindings*) edit_in_nvim ~/.config/hypr/bindings.conf ;;
-  *Input*) edit_in_nvim ~/.config/hypr/input.conf ;;
+  *Monitors*) edit_in_nano ~/.config/hypr/monitors.conf ;;
+  *Keybindings*) edit_in_nano ~/.config/hypr/bindings.conf ;;
+  *Input*) edit_in_nano ~/.config/hypr/input.conf ;;
   *DNS*) present_terminal omarchy-setup-dns ;;
   *Config*) show_setup_config_menu ;;
   *Fingerprint*) present_terminal omarchy-setup-fingerprint ;;
@@ -171,14 +171,14 @@
 
 show_setup_config_menu() {
   case $(menu "Setup" "  Hyprland\n  Hypridle\n  Hyprlock\n  Hyprsunset\n  Swayosd\n󰌧  Walker\n󰍜  Waybar\n󰞅  XCompose") in
-  *Hyprland*) edit_in_nvim ~/.config/hypr/hyprland.conf ;;
-  *Hypridle*) edit_in_nvim ~/.config/hypr/hypridle.conf && omarchy-restart-hypridle ;;
-  *Hyprlock*) edit_in_nvim ~/.config/hypr/hyprlock.conf ;;
-  *Hyprsunset*) edit_in_nvim ~/.config/hypr/hyprsunset.conf && omarchy-restart-hyprsunset ;;
-  *Swayosd*) edit_in_nvim ~/.config/swayosd/config.toml && omarchy-restart-swayosd ;;
-  *Walker*) edit_in_nvim ~/.config/walker/config.toml && omarchy-restart-walker ;;
-  *Waybar*) edit_in_nvim ~/.config/waybar/config.jsonc && omarchy-restart-waybar ;;
-  *XCompose*) edit_in_nvim ~/.XCompose && omarchy-restart-xcompose ;;
+  *Hyprland*) edit_in_nano ~/.config/hypr/hyprland.conf ;;
+  *Hypridle*) edit_in_nano ~/.config/hypr/hypridle.conf && omarchy-restart-hypridle ;;
+  *Hyprlock*) edit_in_nano ~/.config/hypr/hyprlock.conf ;;
+  *Hyprsunset*) edit_in_nano ~/.config/hypr/hyprsunset.conf && omarchy-restart-hyprsunset ;;
+  *Swayosd*) edit_in_nano ~/.config/swayosd/config.toml && omarchy-restart-swayosd ;;
+  *Walker*) edit_in_nano ~/.config/walker/config.toml && omarchy-restart-walker ;;
+  *Waybar*) edit_in_nano ~/.config/waybar/config.jsonc && omarchy-restart-waybar ;;
+  *XCompose*) edit_in_nano ~/.XCompose && omarchy-restart-xcompose ;;
   *) show_main_menu ;;
   esac
 }
@@ -200,9 +200,7 @@
 }
 
 show_install_service_menu() {
-  case $(menu "Install" "  Dropbox\n  Tailscale") in
-  *Dropbox*) present_terminal omarchy-install-dropbox ;;
-  *Tailscale*) present_terminal omarchy-install-tailscale ;;
+  case $(menu "Install" "  No services available") in
   *) show_install_menu ;;
   esac
 }
@@ -242,7 +240,7 @@
 show_install_style_menu() {
   case $(menu "Install" "󰸌  Theme\n  Background\n  Font") in
   *Theme*) present_terminal omarchy-theme-install ;;
-  *Background*) nautilus ~/.config/omarchy/current/theme/backgrounds ;;
+  *Background*) krusader ~/.config/omarchy/current/theme/backgrounds ;;
   *Font*) show_install_font_menu ;;
   *) show_install_menu ;;
   esac
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
