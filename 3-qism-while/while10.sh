#!/bin/bash
while IFS=' ' read -r name age; do
    echo "$name age $age"
done < file.txt
