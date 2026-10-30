#!/bin/bash
for f in *
do
   VAR="The number of characters in the file"
   count=$(wc -m < "$f")

   echo "$VAR $f $count"

done