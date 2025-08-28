# TICKET-016: Improve Starship Color Contrast

## User Request
better starship text and bg colors

## Q&A
**Which colors need improvement?**
- color_text, color_a _b _c

**What specific problems are you experiencing?**
- poor contrast makes them not readable

**Scope of changes:**
- all themes color review

**Expected outcome:**
- IDK, YOU WILL PRINT HOW IT LOOKS HERE IN CHAT AND I WILL DECIDE IF THATS OK

**Priority level:**
- LOW

## Description
Review and improve color contrast across all starship themes to enhance readability. Analysis revealed several critical contrast issues:

### Major Issues Identified:
1. **tokyo-night**: `color_text: #202020` is too dark for colored backgrounds
2. **matte-black**: `color_a: #1a1a1a` won't be visible on dark terminals  
3. **catppuccin-latte**: Pure white text may be harsh

### All Themes Requiring Review:
- catppuccin, catppuccin-latte, tokyo-night, gruvbox, nord, rose-pine, everforest, kanagawa, matte-black, osaka-jade, ristretto

The task involves analyzing current color combinations for adequate contrast ratios and improving readability while maintaining each theme's aesthetic identity.

## Acceptance Criteria
- [ ] Analyze contrast ratios for all 11 starship themes
- [ ] Fix critical contrast issues (tokyo-night dark text, matte-black dark backgrounds)
- [ ] Ensure text remains readable on all background color combinations
- [ ] Present color changes in chat for user approval
- [ ] Maintain each theme's visual identity and aesthetic
- [ ] Test colors work in both light and dark terminal environments
- [ ] Update all theme starship.toml files with improved colors

## Priority
Low

## Status
Todo

## Preparation
[To be filled during implementation planning]

## Architecture
[To be filled during implementation planning]

## TODOWrite
[Placeholder. Leave empty.]