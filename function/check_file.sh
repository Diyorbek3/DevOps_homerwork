check_file() {
  if [ -f "$1" ]; then
    echo "INFO:File mavjud: $1"
  else
    echo "ERROR:File topilmadi: $1"
  fi
} 
check_file "$1"