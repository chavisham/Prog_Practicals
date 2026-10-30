#!/bin/bash

directory="$1"

if [ ! -d "$directory" ]; then
    echo "Usage: $0 <directory>" >&2
    exit 1
fi

total_files=0
total_size=0

for file in "$directory"/*.conf "$directory"/*.log; do
    if [ -f "$file" ]; then
        total_files=$((total_files + 1))
        size=$(wc -c < "$file")
        total_size=$((total_size + size))
    fi
done

echo "TOTAL_FILES: $total_files" > backup_summary.txt
echo "TOTAL_SIZE: $total_size" >> backup_summary.txt
echo "SCAN_COMPLETED: $(date '+%Y-%m-%d %H:%M:%S')" >> backup_summary.txt