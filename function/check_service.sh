#!/bin/bash
check_service() {
  if systemctl is-active --quiet nginx; then
    echo "Service ishlayapti"
  else
    echo "Service to‘xtagan"
  fi
}
check_service