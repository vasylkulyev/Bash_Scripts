#!/bin/bash
lscpu | grep "Model name" 				#SHOW CPU MODEL NAME
lscpu | grep -E '^Thread|^Core|^Socket|^CPU\(' 	        #CPU THREAD CORE SOCKET AMOUNT 
grep 'model name' /proc/cpuinfo | wc -l 		#CPU AMOUNT
free -h | grep "Mem" | awk '{print $1, $2}' 		#SHOW RAM
parted -l | grep "Model" 				#MODELS OF DISKS
df -i / | grep -v "Filesystem" | awk '{print $5}' 	#USED INODES IN %
