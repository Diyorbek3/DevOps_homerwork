until nc -z localhost 80; do
    echo "Port not open"
    sleep 5
done
echo "Port open"
