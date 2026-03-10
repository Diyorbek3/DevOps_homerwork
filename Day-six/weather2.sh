#!/bin/bash

# Kordinatalar (Toshkent)
LAT=41.31
LON=69.24

# Fayl nomini sana bilan shakllantirish: weather_2026_03_10.json
FILENAME="weather_$(date +%Y_%m_%d).json"

API="https://api.open-meteo.com/v1/forecast?latitude=$LAT&longitude=$LON&current_weather=true"

# API-dan ma'lumotni olib, jq orqali chiroyli formatda (pretty-print) faylga saqlaymiz
curl -s "$API" | jq '.' > "$FILENAME"

# Natijani tekshirish
if [ -f "$FILENAME" ]; then
    echo "Muvaffaqiyatli: Ob-havo ma'lumotlari '$FILENAME' fayliga saqlandi."
    echo "Fayl hajmi: $(du -h $FILENAME | cut -f1)"
else
    echo "Xato: Ma'lumotni saqlashda muammo yuz berdi."
fi