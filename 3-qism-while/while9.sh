while IFS=',' read -r name age; do
    echo "$name is $age years old"
done < data.csv
