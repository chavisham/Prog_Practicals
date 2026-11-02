#!/bin/bash

if [ ! -d MyTextFiles ]; then
    existed=false
    mkdir MyTextFiles
fi

if [ "$1" == "1" ]; then

    cp *.[tT][xX][tT] MyTextFiles/
else
    if [ "$existed" == "false" ]; then
        echo "Warning: MyTextFiles does not exist"
    else
        mv MyTextFiles/*.[tT][xX][tT] .
    fi
fi

ls MyTextFiles > DirectoryListing.txt
wc -l < DirectoryListing.txt