#!/bin/bash
check_user() {
  USER_NAME=$1
  if grep -q "^$USER_NAME:" /etc/passwd; then
    echo "[OK] Foydalanuvchi '$USER_NAME' tizimda mavjud."
  else
    echo "[ERROR] Foydalanuvchi '$USER_NAME' topilmadi!"
  fi
} 
check_user "root"
check_user "diyor"
check_user "not_exists"