# config/hypr/bindings.conf

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal must use `ghostty`, file manager must use `krusader`, replaced application bindings  
**SAFE TO UPDATE**: Other keybindings and system functionality can accept upstream changes  
**CONFLICT RESOLUTION**: Keep ghostty/krusader/firefox/bitwarden references, merge other keybindings

## Change Summary
Multiple system changes: terminal replacement (alacritty→ghostty), file manager replacement (nautilus→krusader), application streamlining, and webapp replacements

## Diff 1 - Terminal Replacement (alacritty → ghostty)
```diff
-$terminal = uwsm app -- alacritty
+$terminal = uwsm app -- ghostty
```

## Diff 2 - File Manager Replacement (nautilus → krusader) 
```diff
-bindd = SUPER, F, File manager, exec, uwsm app -- nautilus --new-window
+bindd = SUPER, F, File manager, exec, uwsm app -- krusader
```

## Diff 3 - Editor Replacement (nvim → nano + VSCode)
```diff
-bindd = SUPER, N, Neovim, exec, $terminal -e nvim
+bindd = SUPER, N, Text Editor, exec, $terminal -e nano
+bindd = SUPER, V, VS Code, exec, uwsm app -- code
```

## Diff 4 - Browser/Email App Replacement
```diff
-bindd = SUPER, B, Browser, exec, $browser
+bindd = SUPER, B, Firefox, exec, uwsm app -- firefox
-bindd = SUPER, E, Email, exec, $webapp="https://app.hey.com"
+bindd = SUPER, E, Thunderbird, exec, uwsm app -- thunderbird
```

## Diff 5 - Password Manager Replacement (1Password → Bitwarden)
```diff
-bindd = SUPER, slash, Passwords, exec, uwsm app -- 1password
+bindd = SUPER, slash, Bitwarden, exec, $webapp="https://vault.bitwarden.com"
```

## Diff 6 - Application/Webapp Streamlining
```diff
-bindd = SUPER, M, Music, exec, uwsm app -- spotify
+bindd = SUPER, M, Plexamp, exec, uwsm app -- plexamp
-bindd = SUPER, A, ChatGPT, exec, $webapp="https://chatgpt.com"
+bindd = SUPER, A, AI Studio, exec, $webapp="https://aistudio.google.com"
-bindd = SUPER, C, Calendar, exec, $webapp="https://app.hey.com/calendar/weeks/"
+bindd = SUPER, C, Calendar, exec, $webapp="https://calendar.google.com"
+bindd = SUPER, S, Sheets, exec, $webapp="https://sheets.google.com"
-bindd = SUPER, Y, YouTube, exec, $webapp="https://youtube.com/"
+bindd = SUPER, Y, Claude, exec, $webapp="https://claude.ai"

# Removed bindings:
-bindd = SUPER ALT, G, Google Messages, exec, $webapp="https://messages.google.com/web/conversations"
-bindd = SUPER, X, X, exec, $webapp="https://x.com/"
-bindd = SUPER SHIFT, X, X Post, exec, $webapp="https://x.com/compose/post"
```

## Reasoning
- **Diff 1**: Part of system-wide terminal replacement (change 001)  
- **Diff 2**: Part of file manager replacement (change 003) 
- **Diff 3**: Part of editor replacement (change 002) + VSCode integration (change 009)
- **Diff 4**: Part of application streamlining (change 008) - Firefox + Thunderbird
- **Diff 5**: Part of security integration with Bitwarden (change 008)
- **Diff 6**: Part of webapp replacement (changes 005/007) - productivity-focused webapps