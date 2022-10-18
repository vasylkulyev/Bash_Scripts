#!/bin/bash
#Если файл содержит строку более 5 раз то запускать Гугл_Хром Браузер
log_file=$1
string=$2
action_scr=`google-chrome https://www.google.com/`
grep -c "$string" "$log_file" | { read my_result; test $my_result -gt 5 && sh ${action_scr}; }


