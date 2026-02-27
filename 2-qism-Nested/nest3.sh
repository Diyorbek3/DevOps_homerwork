for dir in /tmp /var; do
    for file in $dir/*; do
        echo $file
    done
done
