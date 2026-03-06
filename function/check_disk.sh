#!/bin/bash
check_disk() {

  
  USAGE=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
  if [ "$USAGE" -gt 80 ]; then
    echo "[WARNING] Disk deyarli to‘ldi! Bandlik: $USAGE%"
  else
    echo "[OK] Diskda yetarli joy bor. Bandlik: $USAGE%"
  fi
}

check_disk 