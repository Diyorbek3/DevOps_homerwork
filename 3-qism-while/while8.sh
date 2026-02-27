while read line; do
    if echo "$line" | grep -q "ERROR"; then echo "Found: $line"; fi
done < app.log
