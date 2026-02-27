while :; do
    echo "1. Uptime\n2. Exit"
    read choice
    case $choice in 1) uptime;; 2) exit;; esac
done
