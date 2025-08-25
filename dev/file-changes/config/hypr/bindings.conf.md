# config/hypr/bindings.conf

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal replacement (alacritty→ghostty) as per critical-changes.md, Editor replacement (nvim→nano), File manager replacement (nautilus→krusader)  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Keybinding and app rule updates for replaced applications

## Diff
```diff
@@ -1,28 +1,28 @@
 # Application bindings
-$terminal = uwsm app -- alacritty
+$terminal = uwsm app -- ghostty
 $browser = omarchy-launch-browser
+$webapp = $browser --app
 
-bindd = SUPER, return, Terminal, exec, $terminal --working-directory $(omarchy-cmd-terminal-cwd)
-bindd = SUPER, F, File manager, exec, uwsm app -- nautilus --new-window
-bindd = SUPER, B, Browser, exec, $browser
-bindd = SUPER, M, Music, exec, uwsm app -- spotify
-bindd = SUPER, N, Neovim, exec, $terminal -e nvim
+bindd = SUPER, return, Terminal, exec, $terminal --working-directory=$(omarchy-cmd-terminal-cwd)
+bindd = SUPER, F, File manager, exec, uwsm app -- krusader
+bindd = SUPER, B, Firefox, exec, uwsm app -- firefox
+bindd = SUPER, N, Text Editor, exec, $terminal -e nano
+bindd = SUPER, V, VS Code, exec, uwsm app -- code
 bindd = SUPER, T, Activity, exec, $terminal -e btop
 bindd = SUPER, D, Docker, exec, $terminal -e lazydocker
 bindd = SUPER, G, Signal, exec, uwsm app -- signal-desktop
 bindd = SUPER, O, Obsidian, exec, uwsm app -- obsidian -disable-gpu
-bindd = SUPER, slash, Passwords, exec, uwsm app -- 1password
+bindd = SUPER, slash, Bitwarden, exec, $webapp="https://vault.bitwarden.com"
 
 # If your web app url contains #, type it as ## to prevent hyperland treat it as comments
-bindd = SUPER, A, ChatGPT, exec, omarchy-launch-webapp "https://chatgpt.com"
-bindd = SUPER SHIFT, A, Grok, exec, omarchy-launch-webapp "https://grok.com"
-bindd = SUPER, C, Calendar, exec, omarchy-launch-webapp "https://app.hey.com/calendar/weeks/"
-bindd = SUPER, E, Email, exec, omarchy-launch-webapp "https://app.hey.com"
-bindd = SUPER, Y, YouTube, exec, omarchy-launch-webapp "https://youtube.com/"
-bindd = SUPER SHIFT, G, WhatsApp, exec, omarchy-launch-webapp "https://web.whatsapp.com/"
-bindd = SUPER ALT, G, Google Messages, exec, omarchy-launch-webapp "https://messages.google.com/web/conversations"
-bindd = SUPER, X, X, exec, omarchy-launch-webapp "https://x.com/"
-bindd = SUPER SHIFT, X, X Post, exec, omarchy-launch-webapp "https://x.com/compose/post"
+bindd = SUPER, A, AI Studio, exec, $webapp="https://aistudio.google.com"
+bindd = SUPER SHIFT, A, Grok, exec, $webapp="https://grok.com"  
+bindd = SUPER, C, Calendar, exec, $webapp="https://calendar.google.com"
+bindd = SUPER, E, Thunderbird, exec, uwsm app -- thunderbird
+bindd = SUPER, S, Sheets, exec, $webapp="https://sheets.google.com"
+bindd = SUPER, M, Plexamp, exec, uwsm app -- plexamp
+bindd = SUPER, Y, Claude, exec, $webapp="https://claude.ai"
+bindd = SUPER SHIFT, G, WhatsApp, exec, $webapp="https://web.whatsapp.com/"
 
 # Overwrite existing bindings, like putting Omarchy Menu on Super + Space
 # unbind = SUPER, Space
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
