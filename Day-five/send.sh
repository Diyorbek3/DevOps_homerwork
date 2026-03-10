#!/bin/bash

# Telegram bot token
TOKEN="8568584745:AAE38B36G1hFgNHGrhS1UumEKaiPpfFCjoQ"

# Parametrlar
CHAT_ID=$1
MESSAGE=$2
# Tekshirish
if [ -z "$CHAT_ID" ] || [ -z "$MESSAGE" ]; then
 echo "Usage: $0 <chat_id> <message>"
 exit 1
fi

# Telegram API
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

# Xabar yuborish
curl -s -X POST $URL \
 -d chat_id="$CHAT_ID" \
 -d text="$MESSAGE"

echo "Message sent!"

DISK=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $DISK -lt 80 ]; then
  ./send.sh -1003740263757 "⚠️ Disk usage 80% dan kam bosaver"
fi