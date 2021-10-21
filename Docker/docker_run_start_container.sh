#!/bin/bash
if [ $# -lt 1 ] ; then
        echo "Clarify IMAGE of container"
        exit 0
fi
cont_name=$1
given_name=$2
cont_count=`docker ps -a`
printf "%s\n" "$cont_count"
#set the port in docker run if needed example: [-p 8080:80]
echo `docker start "$cont_name" || docker run --name "$cont_name" -d "$cont_name"`
