while true; do
    echo -e "\nFiles and Directories in the Current Path:"
    
    # ls -lh: inson o'qiy oladigan hajmda ko'rsatish
    # awk: faqat 9-ustun (nomi) va 5-ustunni (hajmi) chop etish
    ls -lh | awk 'NR>1 {print "- " $9 " (" $5 ")"}'

    echo -e "\n--- Part 2: Character Counting ---"
done