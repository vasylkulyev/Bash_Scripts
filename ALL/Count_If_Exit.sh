#!/bin/bash
EXT="*.yml"
#ПОСЧИТАТЬ ФАЙЛЫ С РАСШИРЕНИЕМ .YML И ЕСЛИ БОЛЬШЕ 1 ТО ВЫЙТИ НОРМАЛЬНО ВСЕ ОСТАЛЬНОЕ ОШИБКА
find . -type f -iname $EXT | wc -l | { read c_result; test $c_result -gt 1 && exit 0 || exit 1; }
