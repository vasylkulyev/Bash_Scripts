#!/bin/bash
if [ $# -lt 2 ]; then
    echo "Enter the path where to find, and extension of file"
    exit 0
fi
path=$1
ext=$2
echo `find $path -type f -iname "*.$ext" | wc -l | { read c_result; test $c_result -gt 1 && exit 0 || exit 1; }`
