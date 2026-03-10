#!/bin/bash

LAT=$1
LON=$2
# CHAT_ID ni shu yerga yozing (masalan: 12345678)
CHAT_ID="-1003740263757" 

if [ -z "$LAT" ] || [ -z "$LON" ]; then
 echo "Usage: $0 <latitude> <longitude>"
 exit 1
fi

API="https://api.open-meteo.com/v1/forecast?latitude=$LAT&longitude=$LON&current_weather=true"

DATA=$(curl -s $API)

TEMP=$(echo $DATA | jq '.current_weather.temperature')
WIND=$(echo $DATA | jq '.current_weather.windspeed')
TIME=$(echo $DATA | jq -r '.current_weather.time')

# Telegram xabari matnini shakllantiramiz
MESSAGE="📍 Joylashuv: $LAT, $LON
🌡 Harorat: $TEMP °C
💨 Shamol tezligi: $WIND km/h
⏰ Vaqt: $TIME"

TOKEN="8568584745:AAE38B36G1hFgNHGrhS1UumEKaiPpfFCjoQ"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL \
 -d chat_id="$CHAT_ID" \
 -d text="$MESSAGE"

# Terminalga chiqarish
echo "--------------------------"
echo "Location: $LAT , $LON"
echo "Temperature: $TEMP °C"
echo "Wind speed: $WIND km/h"
echo "Time: $TIME"
echo "--------------------------"
echo "Xabar Telegramga yuborildi!"