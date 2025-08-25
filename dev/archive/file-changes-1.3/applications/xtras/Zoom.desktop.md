# applications/xtras/Zoom.desktop

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: This file must remain deleted - do not restore it  
**SAFE TO UPDATE**: N/A - file is intentionally removed  
**CONFLICT RESOLUTION**: If upstream adds this file back, delete it again

## Change Summary
Deleted Zoom desktop file as part of application streamlining

## Diff
```diff
-[Desktop Entry]
-Name=Zoom
-Comment=Zoom Video Conference
-Exec=env QT_SCALE_FACTOR=2 /usr/bin/zoom %U
-Icon=Zoom
-Terminal=false
-Type=Application
-Encoding=UTF-8
-Categories=Network;Application;
-StartupWMClass=zoom
-MimeType=x-scheme-handler/zoommtg;x-scheme-handler/zoomus;x-scheme-handler/tel;x-scheme-handler/callto;x-scheme-handler/zoomphonecall;x-scheme-handler/zoomphonesms;x-scheme-handler/zoomcontactcentercall;application/x-zoom
-X-KDE-Protocols=zoommtg;zoomus;tel;callto;zoomphonecall;zoomphonesms;zoomcontactcentercall;
```

## Reasoning
Removed as unnecessary for development-focused system - video conferencing not required for minimal setup.