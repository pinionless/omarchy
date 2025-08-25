# install/packages.sh

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Terminal replacement (alacritty→ghostty) as per critical-changes.md, Editor replacement (nvim→nano), File manager replacement (nautilus→krusader)  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
Installation script updates for application changes

## Diff
```diff
@@ -1,7 +1,4 @@
 sudo pacman -S --noconfirm --needed \
-  1password-beta \
-  1password-cli \
-  alacritty \
   avahi \
   bash-completion \
   bat \
@@ -46,7 +43,6 @@
   imv \
   inetutils \
   jq \
-  kdenlive \
   kvantum-qt5 \
   lazydocker \
   lazygit \
@@ -61,14 +57,11 @@
   mariadb-libs \
   mise \
   mpv \
-  nautilus \
   noto-fonts \
   noto-fonts-cjk \
   noto-fonts-emoji \
   noto-fonts-extra \
   nss-mdns \
-  nvim \
-  obs-studio \
   obsidian \
   omarchy-chromium \
   pamixer \
@@ -86,7 +79,6 @@
   satty \
   signal-desktop \
   slurp \
-  spotify \
   starship \
   sushi \
   swaybg \
@@ -98,7 +90,6 @@
   ttf-font-awesome \
   ttf-ia-writer \
   ttf-jetbrains-mono \
-  typora \
   tzupdate \
   ufw \
   ufw-docker \
@@ -116,7 +107,6 @@
   xdg-desktop-portal-gtk \
   xdg-desktop-portal-hyprland \
   xmlstarlet \
-  xournalpp \
   yaru-icon-theme \
   yay \
   zoxide
```

## Reasoning
Updated as part of systematic application replacements defined in critical-changes.md
