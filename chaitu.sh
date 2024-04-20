#!/bin/bash

# Loop from 1 to 100
for ((i=1; i<=100; i++)); do
    # Check if the number is divisible by both 3 and 5, but not by 15
if [ $((i % 3)) -eq 0 ] && [ $((i % 5)) -eq 0 ] && [ $((i % 15)) -ne 0 ]; then
        echo "$i meets the conditions"
fi
done
