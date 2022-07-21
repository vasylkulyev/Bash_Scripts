#!/bin/bash
path=$1
if [ $# -lt 1 ];
    then
        echo "Enter the path where delete, ex: /home/user/backup/"
        exit 1
    else
        find $path* -mtime +10 -type f -delete
fi

