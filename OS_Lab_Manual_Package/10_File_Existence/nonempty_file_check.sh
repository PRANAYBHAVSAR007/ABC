#!/bin/bash
read -p "Enter file name: " file

if [ -f "$file" ] && [ -s "$file" ]; then
    echo "File exists and is not empty."
else
    echo "File does not exist or is empty."
fi
