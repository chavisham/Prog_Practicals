#!/bin/bash

if [ "$1" == "1" ]
then
    mkdir -p MyTextFiles
    cp *.[tT][xX][tT] MyTextFiles
else
    if [ -d MyTextFiles ];
    then
        mv MyTextFiles/*.[tT][xX][tT] .
    else
        echo "Warning: MyTextFiles does not exist"
    fi

fi

ls -l > DirectoryListing.txt
wc -l < DirectoryListing.txt