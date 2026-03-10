#!/bin/bash

CITY_LAT=41.31
CITY_LON=69.24

API="https://api.open-meteo.com/v1/forecast?latitude=$CITY_LAT&longitude=$CITY_LON&current_weather=true"

TEMP=$(curl -s $API | jq '.current_weather.temperature')

echo "$(date) Temperature: $TEMP °C" >> weather.log

# Nuqtadan keyingi qismini olib tashlab, faqat butun qismini olamiz
# Masalan: 25.4 -> 25 bo'ladi
INT_TEMP=${TEMP%.*}

# Endi butun sonni bemalol solishtirish mumkin
if [ "$INT_TEMP" -gt 35 ]; then
 echo "🔥 Very hot"
else
 echo "🌤️ Moderate weather"
fi