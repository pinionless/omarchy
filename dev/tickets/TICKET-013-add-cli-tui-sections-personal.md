# TICKET-013: Add CLI and TUI Tools Sections to personal.sh

## User Request
add 2:
- CLI tools section in personal.sh
- TUI tools section in personal.sh

## Q&A
1. **What specific CLI tools** - "trash" (trash-cli package)
2. **What specific TUI tools** - Don't know yet
3. **Are these new tools** - Yes, new
4. **What's the purpose** - Those 2 sections don't exist in personal.sh, we need them
5. **Preferred format** - Follow the standard (read personal.sh and follow sections pattern)

## Description
Add two new sections to `/home/pinion/github/PinArchy/install/packaging/personal.sh`:

1. **CLI Tools Section**: Add a new section following the existing pattern (like Section 1, 2, 3) that installs CLI tools, starting with `trash-cli` package
2. **TUI Tools Section**: Add an empty section structure following the same pattern, ready for future TUI tools to be added

Both sections should follow the existing file structure pattern with:
- Proper section headers with equal signs
- Echo statements for progress reporting
- OMARCHY_BARE conditional checking
- yay installation commands with --noconfirm --needed flags

## Acceptance Criteria
- [ ] CLI tools section added with proper formatting following existing sections pattern
- [ ] trash-cli package added to CLI tools section
- [ ] TUI tools section structure added (empty but ready for future tools)
- [ ] Both sections follow the OMARCHY_BARE conditional pattern
- [ ] Echo statements added for installation progress reporting
- [ ] Sections numbered appropriately (likely Section 4 and 5)

## Priority
Medium

## Status
Done

## Preparation
[Placeholder. Leave empty.]

## Architecture
[Placeholder. Leave empty.]

## TODOWrite
[Placeholder. Leave empty.]