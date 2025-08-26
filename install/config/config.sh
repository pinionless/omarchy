#!/bin/bash

# Copy over Omarchy configs
mkdir -p ~/.config
cp -R ~/.local/share/omarchy/config/* ~/.config/

# Use default bashrc and zshrc from Omarchy
cp ~/.local/share/omarchy/default/bashrc ~/.bashrc
cp ~/.local/share/omarchy/default/zshrc ~/.zshrc
