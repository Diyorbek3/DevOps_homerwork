#!/bin/bash
for file in "$@"; do
    if [ -f "$file" ]; then
        cat "$file"
    else
        echo "Error: $file yo'q"
    fi
done
