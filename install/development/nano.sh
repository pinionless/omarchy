#!/bin/bash

if ! command -v nano &>/dev/null; then
  yay -S --noconfirm --needed nano
fi
