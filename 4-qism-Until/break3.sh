#!/bin/bash
while :; do
    read -p "Son: " n
    if [ $n -eq 0 ]; then break; fi
    echo $n
done
