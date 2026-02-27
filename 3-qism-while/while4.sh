threshold=80
while true; do
    cpu=$(top -bn1 | grep Cpu | awk '{print $2}')
    if (( cpu > threshold )); then echo "High CPU"; fi
    sleep 5
done
