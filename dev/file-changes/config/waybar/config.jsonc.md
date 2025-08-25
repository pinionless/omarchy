# config/waybar/config.jsonc

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal replacement (alacritty→ghostty) as per critical-changes.md  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Terminal replacement in waybar configuration

## Diff
```diff
@@ -8,6 +8,7 @@
   "modules-center": ["clock", "custom/update"],
   "modules-right": [
     "group/tray-expander",
+    "mpris",
     "bluetooth",
     "network",
     "pulseaudio",
@@ -46,7 +47,7 @@
   "custom/update": {
     "format": "",
     "exec": "omarchy-update-available",
-    "on-click": "alacritty --class Omarchy --title Omarchy -e omarchy-update",
+    "on-click": "ghostty --class=Omarchy --title=Omarchy -e omarchy-update",
     "tooltip-format": "Omarchy update available",
     "interval": 3600
   },
@@ -54,7 +55,7 @@
   "cpu": {
     "interval": 5,
     "format": "󰍛",
-    "on-click": "alacritty -e btop"
+    "on-click": "ghostty -e btop"
   },
   "clock": {
     "format": "{:%A %H:%M}",
@@ -73,7 +74,7 @@
     "tooltip-format-disconnected": "Disconnected",
     "interval": 3,
     "nospacing": 1,
-    "on-click": "alacritty --class=Impala -e impala"
+    "on-click": "ghostty --class=Impala -e impala"
   },
   "battery": {
     "format": "{capacity}% {icon}",
@@ -102,7 +103,7 @@
   },
   "pulseaudio": {
     "format": "{icon}",
-    "on-click": "alacritty --class=Wiremix -e wiremix",
+    "on-click": "ghostty --class=Wiremix -e wiremix",
     "on-click-right": "pamixer -t",
     "tooltip-format": "Playing at {volume}%",
     "scroll-step": 5,
@@ -126,5 +127,25 @@
   "tray": {
     "icon-size": 12,
     "spacing": 12
+  },
+  "mpris": {
+    "format": "{player_icon} {dynamic}",
+    "format-paused": "{status_icon} <i>{dynamic}</i>",
+    "player-icons": {
+      "default": "🎵",
+      "mpv": "🎵",
+      "plexamp": "📻"
+    },
+    "status-icons": {
+      "paused": "⏸",
+      "playing": "▶",
+      "stopped": "⏹"
+    },
+    "ignored-players": ["firefox"],
+    "on-click": "playerctl play-pause",
+    "on-click-right": "playerctl next",
+    "on-scroll-up": "playerctl previous",
+    "on-scroll-down": "playerctl next",
+    "tooltip-format": "{player}: {artist} - {title}"
   }
 }
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
