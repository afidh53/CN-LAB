#!/bin/bash

count=0

while read -r file; do
    occurrences=$(grep -o "Linux" "$file" | wc -l)
    count=$((count + occurrences))
done < file_list.txt

echo "Total count of 'Linux': $count"
