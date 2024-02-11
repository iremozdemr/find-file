#!/bin/bash

echo "Enter the name you want to find:"
read name
#enter a file name or a directory name

result=$(find / -name "$name" 2>/dev/null)

if [ -z "$result" ]; then
    echo "no files or directories found with the name '$name'."
else
    echo "files and directories found with the name '$name':"
    echo "$result"
fi