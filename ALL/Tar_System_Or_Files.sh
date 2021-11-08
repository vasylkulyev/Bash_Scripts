#!/bin/bash
if [ $# -lt 3 ] ; then
        echo "Использование Архиватора Системы: Имя_Архива Исключаемая_Директория Директория_для_Архивации"
        exit 0
fi
echo `cd /path/where/archive/will/be/stored`
archiveName=$1
excludeDir=$2
archiveDir=$3
echo `tar -cvpzf $archiveName.tar.gz --exclude=/$archiveName.tar.gz --exclude=$excludeDir --one-file-system $archiveDir`

