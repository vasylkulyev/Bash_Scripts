#!/bin/bash
if [ $# -lt 3 ] ; then
        echo "Write NAME of container and then which IMAGE to use and set the PORT (like 80:80)"
        exit 0
fi
cont_name=$1
image_name=$2
cont_lst=`docker ps -a`
exposeport=$3
printf "%s\n" "$cont_list"
echo `docker start "$cont_name" || docker run --name "$cont_name" -d -p $exposeport "$image_name"`
