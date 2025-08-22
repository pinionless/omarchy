#!/bin/bash

if [ -z "$OMARCHY_BARE" ]; then
  omarchy-webapp-install "WhatsApp" https://web.whatsapp.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/whatsapp.png
  omarchy-webapp-install "Google Contacts" https://contacts.google.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-contacts.png
  omarchy-webapp-install "Google AI Studio" https://aistudio.google.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-ai.png
  omarchy-webapp-install "Google Calendar" https://calendar.google.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-calendar.png
  omarchy-webapp-install "Google Sheets" https://sheets.google.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-sheets.png
  omarchy-webapp-install "Claude" https://claude.ai https://claude.ai/favicon.svg
fi
