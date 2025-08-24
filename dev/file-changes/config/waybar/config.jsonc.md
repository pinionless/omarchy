# config/waybar/config.jsonc

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All `ghostty` commands instead of `alacritty`, media player (mpris) integration  
**SAFE TO UPDATE**: Other waybar modules and styling can accept upstream changes  
**CONFLICT RESOLUTION**: Keep ghostty references and mpris module, merge other functionality

## Change Summary
Two changes: terminal replacement (alacritty→ghostty) and media player integration for Plexamp

## Diff 1 - Terminal Replacement (alacritty → ghostty)
```diff
-    "on-click": "alacritty --class Omarchy --title Omarchy -e omarchy-update",
+    "on-click": "ghostty --class=Omarchy --title=Omarchy -e omarchy-update",

-    "on-click": "alacritty -e btop"
+    "on-click": "ghostty -e btop"

-    "on-click": "alacritty --class=Impala -e impala"
+    "on-click": "ghostty --class=Impala -e impala"

-    "on-click": "alacritty --class=Wiremix -e wiremix",
+    "on-click": "ghostty --class=Wiremix -e wiremix",
```

## Diff 2 - Media Player Integration (Plexamp support)
```diff
   "modules-right": [
     "group/tray-expander",
+    "mpris",
     "bluetooth",

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
+  }
```

## Reasoning
- **Diff 1**: Part of system-wide terminal replacement (change 001) - all waybar terminal launches use ghostty
- **Diff 2**: Part of application integration (change 008) - added media controls for Plexamp and other players in the status bar