#!/bin/bash
repeat() {
  for ((i = 1; i <= $1; i++)); do
    echo "$i"
  done
}
repeat "$1"