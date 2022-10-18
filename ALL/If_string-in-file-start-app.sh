#!/bin/bash
log_file=$1
string=$2
if grep -q "$string" "$log_file"; then #НАЙТИ СТРОКУ В ЛОГ ФАЙЛЕ
    count_times=`grep -c "$string" "$log_file"` #ПОСЧИТАТЬ СКОЛЬКО РАЗ СТРОКА В ФАЙЛЕ
    printf "%s\n" "There are $string $count_times times in a $log_file" #ВЫВЕСТИ НА НОВОЙ СТРОКЕ
    if [ "$count_times" -gt 5 ]; then #ЕСЛИ БОЛЬШЕ 5
        google-chrome https://www.google.com/ #ЗАПУСТИТЬ ГУГЛ
    exit 1 #ЗАВЕРШИТЬ СКРИПТ ПОСЛЕ ОКОНЧАНИЯ
    fi
else
    printf "%s\n" "No string in file!" #ВЫВЕСТИ НА НОВОЙ СТРОКЕ
fi

