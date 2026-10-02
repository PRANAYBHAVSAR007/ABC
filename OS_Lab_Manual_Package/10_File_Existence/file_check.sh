#!/bin/bash
read -p "Enter file name: " file

if [ -e "$file" ]; then
    echo "File exists."
else
    echo "File does not exist."
fi
