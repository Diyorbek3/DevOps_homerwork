until [ -f ready.txt ]; do
    echo "Waiting..."
    sleep 1
done
echo "Ready!"
