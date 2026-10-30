
#!/bin/bash

file="$1"

critical=0
warning=0
info=0
total=0

while read -r priority issue rest; do
    if [ "$priority" != "Priority" ]; then
        total=$((total + 1))

        if [ "$priority" = "1" ]; then
            critical=$((critical + 1))
        elif [ "$priority" = "2" ]; then
            warning=$((warning + 1))
        elif [ "$priority" = "3" ]; then
            info=$((info + 1))
        fi
    fi
done < <(tr ',' ' ' < "$file")

echo "CRITICAL: $critical" > error_analysis.txt
echo "WARNING: $warning" >> error_analysis.txt
echo "INFO: $info" >> error_analysis.txt
echo "MOST_COMMON_ISSUE: N/A" >> error_analysis.txt
echo "TOTAL_ENTRIES: $total" >> error_analysis.txt
echo "ANALYSIS_DATE: $(date '+%Y-%m-%d')" >> error_analysis.txt
