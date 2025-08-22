# Omarchy Change Documentation

This directory tracks all modifications made to the Omarchy codebase for development and maintenance purposes.

## Naming Convention
- `000-TEMPLATE.md` - Template for documenting changes
- `001-replace-alacritty-with-ghostty.md` - Replace Alacritty terminal with Ghostty
- `002-remove_lazyvim_replace_with_nano.md` - Replace LazyVim/Neovim with nano editor
- `003-replace-webapps.md` - Replace webapps with productivity-focused set
- `004-replace-nautilus-with-krusader.md` - Replace Nautilus with Krusader file manager
- `005-remove-media-and-cloud-apps.md` - Remove media editing and cloud applications
- `006-remove-zoom.md` - Remove Zoom video conferencing application
- `007-remove-spotify.md` - Remove Spotify music streaming application

## Purpose
Each change file documents:
- What files were modified/added/deleted
- Goal and rationale for the change
- Whether migration is required
- Testing performed
- Any special notes or considerations

## Usage
1. Copy `000-TEMPLATE.md` to create new change documentation
2. Use sequential numbering (001, 002, 003, etc.)
3. Use descriptive names for the change
4. Fill out all relevant sections
5. Update as changes evolve during development

This helps maintain a clear history of modifications and assists with troubleshooting, rollbacks, and understanding the evolution of the codebase.