#!/bin/bash

# Generate comprehensive change-index.md file
cd /home/pinion/github/FORKS/omarchy/dev/file-changes

cat > change-index.md << 'EOF'
# Change Index

Index of all files customized in this fork after major upstream merge.

## Files Modified

EOF

echo "### Root Files" >> change-index.md
find . -name "*.md" -path "./*.md" -not -name "README.md" -not -name "critical-changes.md" -not -name "change-index.md" | \
sed 's|^\./||' | sed 's|\.md$||' | sort | while read file; do
    if [[ -f "$file" ]]; then
        summary=$(grep "^## Change Summary" "${file}.md" -A1 | tail -1 || echo "Application replacement updates")
        echo "- [\`$file\`]($file.md) - $summary" >> change-index.md
    fi
done

echo -e "\n### Applications" >> change-index.md
find ./applications -name "*.md" 2>/dev/null | sed 's|^\./||' | sed 's|\.md$||' | sort | while read file; do
    summary=$(grep "^## Change Summary" "${file}.md" -A1 | tail -1 || echo "Application updates")
    echo "- [\`$file\`]($file.md) - $summary" >> change-index.md
done

echo -e "\n### Binary Commands" >> change-index.md
find ./bin -name "*.md" 2>/dev/null | sed 's|^\./||' | sed 's|\.md$||' | sort | while read file; do
    summary=$(grep "^## Change Summary" "${file}.md" -A1 | tail -1 || echo "Binary updates")
    echo "- [\`$file\`]($file.md) - $summary" >> change-index.md
done

echo -e "\n### Configuration Files" >> change-index.md
find ./config -name "*.md" 2>/dev/null | sed 's|^\./||' | sed 's|\.md$||' | sort | while read file; do
    summary=$(grep "^## Change Summary" "${file}.md" -A1 | tail -1 || echo "Configuration updates")
    echo "- [\`$file\`]($file.md) - $summary" >> change-index.md
done

echo -e "\n### Default Templates" >> change-index.md
find ./default -name "*.md" 2>/dev/null | sed 's|^\./||' | sed 's|\.md$||' | sort | while read file; do
    summary=$(grep "^## Change Summary" "${file}.md" -A1 | tail -1 || echo "Template updates")
    echo "- [\`$file\`]($file.md) - $summary" >> change-index.md
done

echo -e "\n### Installation Scripts" >> change-index.md
find ./install -name "*.md" 2>/dev/null | sed 's|^\./||' | sed 's|\.md$||' | sort | while read file; do
    summary=$(grep "^## Change Summary" "${file}.md" -A1 | tail -1 || echo "Installation updates")
    echo "- [\`$file\`]($file.md) - $summary" >> change-index.md
done

echo -e "\n### Theme Files" >> change-index.md
find ./themes -name "*.md" 2>/dev/null | sed 's|^\./||' | sed 's|\.md$||' | sort | while read file; do
    summary=$(grep "^## Change Summary" "${file}.md" -A1 | tail -1 | head -1 || echo "Theme updates")
    echo "- [\`$file\`]($file.md) - $summary" >> change-index.md
done

echo -e "\n## Summary Statistics\n" >> change-index.md
total_files=$(find . -name "*.md" -not -name "README.md" -not -name "critical-changes.md" -not -name "change-index.md" | wc -l)
echo "- **Total documented files**: $total_files" >> change-index.md
echo "- **Major changes**: Terminal (alacritty→ghostty), Editor (nvim→nano), File manager (nautilus→krusader)" >> change-index.md
echo "- **Deleted applications**: zoom, dropbox, tailscale, typora, xournalpp, etc." >> change-index.md
echo "- **New integrations**: ghostty terminal, VSCode theme sync, minimal webapps" >> change-index.md

EOF

echo "Built comprehensive change-index.md with $total_files documented files"