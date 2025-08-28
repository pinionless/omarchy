# TICKET-012: Replace Omarchy Branding with "PinArchy"

## User Request
replace Omarchy Branding with "PinArchy"

## Q&A
1. **Scope**: Do you want to replace ALL instances of "Omarchy" branding with "Arch" throughout the entire codebase, or are there specific areas you want to focus on?
   - **Answer**: ALL

2. **What constitutes "branding"**: Should this include command names, configuration directory names, project description text, repository references, documentation mentions?
   - **Answer**: logos, icons. Name omarchy that shows up in some places e.g. "start icon hover". We keep folder structure and filenames as they are

3. **Exceptions**: Are there any places where "Omarchy" should be preserved (like in git history, fork references, or attribution)?
   - **Answer**: just some visual stuff in the system

4. **Migration impact**: This would likely require creating migrations to handle users who already have the system installed - should this be included?
   - **Answer**: NO

5. **Priority level**: How would you prioritize this task (High/Medium/Low)?
   - **Answer**: LOW

## Description
Replace visual Omarchy branding elements with "PinArchy" branding throughout the system. This includes logos, icons, and user-visible text like hover messages (e.g., "start icon hover"). The scope is limited to visual/display elements only - folder structures, filenames, and command names remain unchanged. No migration system is needed for this change.

## Acceptance Criteria
- [ ] Replace all logos with PinArchy branding
- [ ] Replace all icons that show "Omarchy" with PinArchy equivalents
- [ ] Update hover text and tooltips that reference "Omarchy"
- [ ] Update any user-facing display text that shows "Omarchy"
- [ ] Verify folder structures and filenames remain unchanged
- [ ] Confirm command names (omarchy-*) remain unchanged
- [ ] Test visual changes across different themes

## Priority
Low

## Status
Todo

## Preparation
[Placeholder. Leave empty.]

## Architecture
[Placeholder. Leave empty.]

## TODOWrite
[Placeholder. Leave empty.]