# TICKET-014: Starship Theme Integration

## User Request
add zsh config and theme switching. I have a custom confing that I want to use that will need some color corrections for themes
(Clarified: starship config, not zsh config)

## Q&A
**Custom Starship Config:**
- Q: Do you have a custom starship.toml file you want to use as the base?
- A: I have it, I will provide it later

**Theme Integration:**
- Q: Should omarchy-theme-set <theme> automatically switch starship colors too?
- A: yes, auto switch theme

**Color Corrections:**
- Q: Which parts need color adjustments?
- A: prompt colors to match theme

**Smart Config Approach:**
- Q: Should we use smart config with SSH/Remote + User/Root detection?
- A: we will research remote detection and root detection later

**Implementation Scope:**
- Q: Implementation approach?
- A: similar to vscode theme switch

**Priority:**
- Q: Priority level?
- A: MID

## Description
Integrate starship prompt theming with Omarchy's theme system. Add starship configuration support to `omarchy-theme-set` so that changing themes automatically updates starship prompt colors to match each theme's color palette.

Key requirements:
- Use user's custom starship configuration as base template
- Create theme-specific starship configs for all omarchy themes
- Extend `omarchy-theme-set` to handle starship theme switching
- Ensure prompt colors match each theme's color scheme
- Follow similar pattern to VSCode theme extension integration

## Acceptance Criteria
- [ ] User's custom starship config integrated as base template
- [ ] Theme-specific starship.toml files created for each omarchy theme
- [ ] `omarchy-theme-set` command updated to switch starship themes
- [ ] Starship prompt colors properly match each theme's color palette
- [ ] Integration follows similar pattern to VSCode theme switching
- [ ] Starship theme switching works seamlessly with existing theme system
- [ ] Documentation updated for new starship theming functionality

## Priority
Medium

## Status
Done

## Preparation
[To be filled during implementation planning]

## Architecture
[To be filled during implementation planning]

## TODOWrite
[Placeholder. Leave empty.]