#!/bin/bash

# Shaharlar kordinatalari (Nomi:Latitude,Longitude ko'rinishida)
cities=(
    "Tashkent:41.31,69.24"
    "Samarkand:39.65,66.96"
    "Bukhara:39.77,64.42"
)
echo "City  Temp"
echo "--- $(date) ---" >> weather.log

for city_data in "${cities[@]}"; do
    # Ma'lumotlarni ajratib olamiz
    name=$(echo $city_data | cut -d: -f1)
    coords=$(echo $city_data | cut -d: -f2)
    lat=$(echo $coords | cut -d, -f1)
    lon=$(echo $coords | cut -d, -f2)

    # API ulanish
    API="https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current_weather=true"
    
    # Haroratni olish
    TEMP=$(curl -s $API | jq '.current_weather.temperature')

    # Natijani terminalga chiqarish va log faylga yozish
    output="$name: $TEMP °C"
    echo "$output"
    echo "$output" >> weather.log

    # Issiqlikni tekshirish (butun songa o'tkazib)
    INT_TEMP=${TEMP%.*}
    if [ "$INT_TEMP" -gt 35 ]; then
        echo "  🔥 Diqqat! $name juda issiq!"
    fi
done