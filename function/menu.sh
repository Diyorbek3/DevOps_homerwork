#!/bin/bash
menu() {
  while true; do  
    echo "1 - Salomlashish"
    echo "2 - File tekshirish"
    echo "3 - Exit"
    read a

    case $a in
      1)
        echo "Salom!"
        ;;
      2)
        echo "File nomini kiriting:"
        read file_name
        if [ -f "$file_name" ]; then
          echo "File mavjud."
        else
          echo "File topilmadi."
        fi
        ;;
      3)
        echo "Dasturdan chiqish..."
        exit 0
        ;;
      *)
        echo "Noto‘g‘ri tanlov. Iltimos, 1, 2 yoki 3 ni tanlang."
        ;;
    esac
  done  
}
menu