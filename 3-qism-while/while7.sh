while IFS=':' read -r user uid; do
    echo "$user -> $uid"
done < /etc/passwd
