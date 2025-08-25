# default/hypr/apps/system.conf

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: All customizations shown in diff  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Template updates for application replacements

## Diff
```diff
@@ -2,12 +2,14 @@
 windowrule = float, tag:floating-window
 windowrule = center, tag:floating-window
 windowrule = size 800 600, tag:floating-window
+windowrule = size 620 470, class:Omarchy
+windowrule = size 700 520, class:About
 
-windowrule = tag +floating-window, class:(blueberry.py|Impala|Wiremix|org.gnome.NautilusPreviewer|com.gabm.satty|Omarchy|About|TUI.float)
+windowrule = tag +floating-window, class:(blueberry.py|Impala|Wiremix|com.gabm.satty|Omarchy|About|TUI.float)
 windowrule = tag +floating-window, class:(xdg-desktop-portal-gtk|sublime_text|DesktopEditors), title:^(Open.*Files?|Save.*Files?|Save.*As|All Files|Save)
 
 # Fullscreen screensaver
 windowrule = fullscreen, class:Screensaver
 
 # No transparency on media windows
-windowrule = opacity 1 1, class:^(zoom|vlc|mpv|org.kde.kdenlive|com.obsproject.Studio|com.github.PintaProject.Pinta|imv|org.gnome.NautilusPreviewer)$
+windowrule = opacity 1 1, class:^(vlc|mpv|com.github.PintaProject.Pinta|imv)$
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
