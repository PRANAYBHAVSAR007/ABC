#!/bin/bash
# Prints:
# 1
# 2 3
# 4 5 6 ...
n=${1:-4}
num=1

for ((i=1; i<=n; i++)); do
    for ((j=1; j<=i; j++)); do
        printf "%d " "$num"
        num=$((num + 1))
    done
    printf "\n"
done
