#!/bin/bash
for f in *
do
    if [ -f "$f" ]; then
        count=$(wc -m < "$f")
        echo "The number of characters in the file $f is $count"
    fi
done