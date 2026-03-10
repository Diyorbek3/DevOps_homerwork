  while true; do
        read -p "Enter a line of text (Press Enter without text to exit): " input
        
        # Agar foydalanuvchi bo'sh joy qoldirib Enter bossa, tsikldan chiqamiz
        if [[ -z "$input" ]]; then
            echo "Exiting the Interactive Explorer. Goodbye!"
            exit 0
        fi
        
        # Belgilar sonini hisoblash
        # echo -n yangi qator belgisini (\n) sanamaslik uchun kerak
        char_count=$(echo -n "$input" | wc -m)
        echo "Character Count: $char_count"
        echo ""
    done
done
