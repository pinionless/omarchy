#!/bin/bash

# Helper script to generate documentation for changed files
# Usage: ./generate-docs.sh <file_path> <change_summary> <reasoning>

FILE_PATH="$1"
CHANGE_SUMMARY="$2"  
REASONING="$3"

if [[ -z "$FILE_PATH" ]]; then
    echo "Usage: $0 <file_path> <change_summary> <reasoning>"
    exit 1
fi

DOC_PATH="/home/pinion/github/FORKS/omarchy/dev/file-changes/${FILE_PATH}.md"
DOC_DIR=$(dirname "$DOC_PATH")

# Create directory if it doesn't exist
mkdir -p "$DOC_DIR"

# Get the diff
if [[ -f "$FILE_PATH" ]]; then
    # File exists, get diff
    DIFF_OUTPUT=$(git show upstream/master:"$FILE_PATH" 2>/dev/null | diff -u - "$FILE_PATH" 2>/dev/null | tail -n +3)
    if [[ -z "$DIFF_OUTPUT" ]]; then
        DIFF_OUTPUT=$(git show origin/master:"$FILE_PATH" 2>/dev/null | diff -u - "$FILE_PATH" 2>/dev/null | tail -n +3)
    fi
else
    # File was deleted
    DIFF_OUTPUT="File deleted in fork"
fi

# Determine merge guidance based on critical changes
MERGE_GUIDANCE=""
if grep -q "alacritty" <<< "$DIFF_OUTPUT" 2>/dev/null; then
    MERGE_GUIDANCE="**CRITICAL TO PRESERVE**: Terminal replacement (alacritty→ghostty) as per critical-changes.md"
fi
if grep -q "nvim\|neovim" <<< "$DIFF_OUTPUT" 2>/dev/null; then
    if [[ -n "$MERGE_GUIDANCE" ]]; then
        MERGE_GUIDANCE="$MERGE_GUIDANCE, Editor replacement (nvim→nano)"
    else
        MERGE_GUIDANCE="**CRITICAL TO PRESERVE**: Editor replacement (nvim→nano) as per critical-changes.md"
    fi
fi
if grep -q "nautilus" <<< "$DIFF_OUTPUT" 2>/dev/null; then
    if [[ -n "$MERGE_GUIDANCE" ]]; then
        MERGE_GUIDANCE="$MERGE_GUIDANCE, File manager replacement (nautilus→krusader)"
    else
        MERGE_GUIDANCE="**CRITICAL TO PRESERVE**: File manager replacement (nautilus→krusader) as per critical-changes.md"
    fi
fi

if [[ -z "$MERGE_GUIDANCE" ]]; then
    MERGE_GUIDANCE="**CRITICAL TO PRESERVE**: All customizations shown in diff"
fi

# Create the documentation file
cat > "$DOC_PATH" << EOF
# $FILE_PATH

## 🚨 MERGE GUIDANCE
$MERGE_GUIDANCE  
**SAFE TO UPDATE**: Non-customized sections that don't conflict with changes  
**CONFLICT RESOLUTION**: Preserve fork customizations, accept upstream structural changes

## Change Summary
$CHANGE_SUMMARY

## Diff
\`\`\`diff
$DIFF_OUTPUT
\`\`\`

## Reasoning
$REASONING
EOF

echo "Created documentation: $DOC_PATH"