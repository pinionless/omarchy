# File Changes Documentation System

This directory provides a comprehensive system for managing upstream merges by documenting all customizations made to this Omarchy fork. The system is designed to prevent merge conflicts and ensure consistency when integrating upstream changes.

## Documentation Structure

### 🚨 [`critical-changes.md`](critical-changes.md)  
System-wide replacement rules that apply to ALL files, including new files added by upstream. Documents critical replacements like terminal changes (alacritty→ghostty) that must be applied to any new upstream files.

### 📋 [`change-index.md`](change-index.md)
Index of all specific files that have been customized in this fork. Lists each modified file with a brief description of changes.

### 📁 `[path]/[filename].md`
Detailed documentation for each customized file, showing exact diffs and merge guidance.

## Merge Workflow

### Before Merging Upstream Changes:

1. **Review Critical Changes**: Check [`critical-changes.md`](critical-changes.md) for system-wide rules
2. **Check Specific Files**: Use [`change-index.md`](change-index.md) to see which files you've customized
3. **Read File Documentation**: Review individual file docs for merge guidance

### During Merge:

1. **Preserve Customizations**: Follow merge guidance in individual file documentation
2. **Apply Critical Rules**: Ensure new upstream files comply with critical changes
3. **Search for Violations**: Use grep commands in critical-changes.md to find issues

### After Merge:

1. **Verify Critical Changes**: Run searches to ensure no violations were introduced
2. **Update Documentation**: Add new customized files to the system
3. **Test System**: Verify all replacements work correctly

## Individual File Documentation Template

Create documentation files as: `path/to/filename.ext.md`

Each file should follow this format:

````markdown
# path/to/filename.ext

## 🚨 MERGE GUIDANCE
**CRITICAL TO PRESERVE**: [What must be kept during merges]  
**SAFE TO UPDATE**: [What can accept upstream changes]  
**CONFLICT RESOLUTION**: [How to handle conflicts with upstream]

## Change Summary
[One-line description of what was changed]

## Diff
```diff
-[original upstream line]
+[your modified line]
```

## Reasoning
[Why this change was made]
````