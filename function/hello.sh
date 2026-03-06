hello() {
  if [ -n "$1" ]; then
    echo "Salom, $1"
  else
    echo "Salom, mehmon!"
  fi
}
hello "$1"