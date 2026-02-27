while :; do
    echo "1. Date\n2. Users\n3. Exit"
    read -p "Tanlang: " choice
    case $choice in
        1) date ;;
        2) who ;;
        3) exit 0 ;;
        *) echo "Error" ;;
    esac
done
