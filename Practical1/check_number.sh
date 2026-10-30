#!/bin/bash
read input
if [ "$input" -gt 10 ]
then
    echo "This number is bigger than 10"
else
    echo "This number is not bigger than 10"
fi