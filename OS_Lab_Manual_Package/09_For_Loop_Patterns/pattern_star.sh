#!/bin/bash
# Usage: bash pattern_star.sh 5
n=$1
if [ -z "$n" ]; then
    echo "Usage: bash pattern_star.sh <rows>"
    exit 1
fi

for ((i=1; i<=n; i++)); do
    for ((j=1; j<=i; j++)); do
        printf "* "
    done
    printf "\n"
done
