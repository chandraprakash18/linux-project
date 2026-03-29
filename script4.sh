#!/bin/bash
# Script 4: Log Scanner
# Author: Chandraprakash (24BAI10787)

if [[ $# -lt 1 ]]; then
    echo "Usage: $0 <file> [search_word]"
    exit 1
fi

file=$1
search=${2:-"error"}

if [[ ! -f "$file" ]]; then
    echo "File does not exist!"
    exit 1
fi

total_lines=$(wc -l < "$file")
count=0

while read line; do
    echo "$line" | grep -iq "$search" && ((count++))
done < "$file"

echo "========== Log Summary =========="
echo "File       : $file"
echo "Keyword    : $search"
echo "Total Line : $total_lines"
echo "Matches    : $count"

if [[ $total_lines -gt 0 ]]; then
    percent=$(echo "scale=2; ($count/$total_lines)*100" | bc)
    echo "Match %    : $percent%"
fi

echo ""
echo "Recent Matches:"
grep -in "$search" "$file" | tail -5

echo ""
echo "Done at: $(date)"