count=0
while :; do
    curl http://site || ((count++))
    if [ $count -eq 3 ]; then break; fi
    sleep 1
done
