#!/bin/bash

if [ -f "$1" ]
then
    echo "Priority,Type,Date,Time,Issue,Value,Server" > processed_logs.csv
    tr '#*@' '123' < "$1" | tr '|' ',' | sort -t ',' -k4,4 -r  >> processed_logs.csv
else
    echo "Usage: $0 <log_file>" >&2 
    exit 1
fi