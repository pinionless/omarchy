# install/apps/webapps.sh

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: Only install WhatsApp and Google Contacts - do not restore removed webapps  
**SAFE TO UPDATE**: Core webapp installation logic can accept upstream improvements  
**CONFLICT RESOLUTION**: Keep the minimal webapp list, merge installation functionality

## Change Summary
Streamlined webapp installation to only core productivity webapps, removed social/entertainment/business webapps

## Diff
```diff
-  omarchy-webapp-install "HEY" https://app.hey.com https://www.hey.com/assets/images/general/hey.png
-  omarchy-webapp-install "Basecamp" https://launchpad.37signals.com https://basecamp.com/assets/images/general/basecamp.png
+  # Core webapps that remain in main installation
   omarchy-webapp-install "WhatsApp" https://web.whatsapp.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/whatsapp.png
-  omarchy-webapp-install "Google Photos" https://photos.google.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-photos.png
   omarchy-webapp-install "Google Contacts" https://contacts.google.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-contacts.png
-  omarchy-webapp-install "Google Messages" https://messages.google.com/web/conversations https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-messages.png
-  omarchy-webapp-install "ChatGPT" https://chatgpt.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/chatgpt.png
-  omarchy-webapp-install "YouTube" https://youtube.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/youtube.png
-  omarchy-webapp-install "GitHub" https://github.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/github-light.png
-  omarchy-webapp-install "X" https://x.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/x-light.png
-  omarchy-webapp-install "Figma" https://figma.com/ https://www.veryicon.com/download/png/application/app-icon-7/figma-1?s=256
```

## Reasoning
Part of webapp streamlining (changes 005/007) - removed original social/entertainment/business webapps for minimal development-focused system, keeping only essential communication tools (WhatsApp, Google Contacts).