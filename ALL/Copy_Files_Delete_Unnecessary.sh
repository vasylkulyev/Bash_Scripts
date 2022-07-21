#!/bin/bash
if [ $# -lt 3 ] ; then
	echo "cpexclude usage: pathFrom pathTo excludeRegex"
	exit 0
fi
pathFrom=$1
pathTo=$2
excludeRegex=$3
# Copy everything
echo `cp -a $pathFrom/. $pathTo`
# Delete by excludeRegex
echo `find $pathTo -regex $excludeRegex -delete`
