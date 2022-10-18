#!/bin/bash
echo "Выберите браузер для запуска:"
echo "1 Запуск программы firefox"
echo "2 Запуск программы google"
echo "3 Запуск программы tor"
echo "4 Выход"
read doing #здесь мы читаем в переменную $doing со стандартного ввода

case $doing in
1)
/usr/bin/firefox # если $doing содержит 1, то запустить firefox
;;
2)
/usr/bin/google-chrome # если $doing содержит 2, то запустить google
;;
3)
/usr/bin/tor # если $doing содержит 3, то запустить tor
;;
4)
exit 0
;;
*) #если введено с клавиатуры то, что в case не описывается, выполнять следующее:
echo "Введено неправильное действие"

esac #окончание оператора case
