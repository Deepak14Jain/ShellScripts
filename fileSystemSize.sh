#!/bin/bash

read -p "Location of Directory:" path
du -ah "$path"|sort -hr|head -n 5 > temp.txt
echo "The top 5 largest file at $path are:"
cat temp.txt
rm temp.txt

