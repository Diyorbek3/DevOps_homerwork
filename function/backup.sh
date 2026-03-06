#!/bin/bash
backup() {
    touch "$1".bak
    echo "$1.bak fayli yaratildi."
}
backup "$1"