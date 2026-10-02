#!/bin/bash
read -p "Enter directory name: " directory

if [ -d "$directory" ]; then
    echo "Directory exists."
    echo "Files with executable rights:"
    found=0
    while IFS= read -r -d '' file; do
        echo "$file"
        found=1
    done < <(find "$directory" -type f -perm -111 -print0)

    if [ "$found" -eq 0 ]; then
        echo "No files found with executable rights"
    fi
else
    echo "Directory does not exist"
fi
