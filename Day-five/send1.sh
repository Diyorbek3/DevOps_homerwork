#!/bin/bash

DISK=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $DISK -gt 80 ]; then
 ./send.sh 123456789 "⚠️ Disk usage 80% dan oshdi"
fi
