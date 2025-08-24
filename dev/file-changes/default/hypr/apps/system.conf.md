# default/hypr/apps/system.conf

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Removed references to `org.gnome.NautilusPreviewer` and `zoom` - do not restore them  
**SAFE TO UPDATE**: Other window rules can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep the streamlined class lists, merge other window rule functionality

## Change Summary
Removed window rules for applications that were streamlined away (Nautilus previewer and Zoom)

## Diff
```diff
-windowrule = float, class:^(blueberry.py|Impala|Wiremix|org.gnome.NautilusPreviewer|Omarchy|About)$
-windowrule = center, class:^(blueberry.py|Impala|Wiremix|org.gnome.NautilusPreviewer|Omarchy|About)$
-windowrule = size 800 600, class:^(blueberry.py|Impala|Wiremix|org.gnome.NautilusPreviewer|com.gabm.satty)$
+windowrule = float, class:^(blueberry.py|Impala|Wiremix|Omarchy|About)$
+windowrule = center, class:^(blueberry.py|Impala|Wiremix|Omarchy|About)$
+windowrule = size 800 600, class:^(blueberry.py|Impala|Wiremix|com.gabm.satty)$

-windowrule = opacity 1 1, class:^(zoom|vlc|mpv|org.kde.kdenlive|com.obsproject.Studio|com.github.PintaProject.Pinta|imv|org.gnome.NautilusPreviewer)$
+windowrule = opacity 1 1, class:^(vlc|mpv|org.kde.kdenlive|com.obsproject.Studio|com.github.PintaProject.Pinta|imv)$
```

## Reasoning
Part of application streamlining - removed window rules for applications that were removed from the system:
- `org.gnome.NautilusPreviewer`: Removed as part of file manager replacement (change 003) - Nautilus replaced with Krusader  
- `zoom`: Removed as part of bloat removal (change 004) - Zoom not needed for minimal system