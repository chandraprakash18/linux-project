#!/bin/bash
# Script 3: Directory & Disk Analyzer
# Author: Chandraprakash (24BAI10787)

folders=("/etc" "/var/log" "/home" "/tmp")

echo "========== Directory Report =========="
echo ""

for f in "${folders[@]}"; do
    if [[ -d "$f" ]]; then
        details=$(ls -ld "$f")
        perm=$(echo $details | awk '{print $1}')
        owner=$(echo $details | awk '{print $3}')
        size=$(du -sh "$f" 2>/dev/null | cut -f1)

        echo "Path        : $f"
        echo "Permissions : $perm"
        echo "Owner       : $owner"
        echo "Size        : $size"
        echo "-----------------------------------"
    else
        echo "$f -> Not Found"
    fi
done

echo ""
echo "Disk Snapshot:"
df -h | head -n 5

echo ""
echo "Completed on: $(date)"