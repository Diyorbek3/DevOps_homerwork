#!/bin/bash
while :; do
    echo "1. Disk usage (df -h)\n2. Memory (free -m)\n3. Exit"
    read -p "Tanlang: " choice
    case $choice in
        1) df -h ;;
        2) free -m ;;
        3) exit 0 ;;
        *) echo "Error" ;;
    esac
done
