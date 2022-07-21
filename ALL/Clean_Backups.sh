#!/bin/bash
# Script cleans backups
dirskeepamount=61
# Check last 60 backups in all directories
/usr/bin/find /backups/dir -name "20*" -type d -maxdepth 3 -printf '%Ts\t%P\n' | sort -rn | tail -n +$dirskeepamount | cut -f2- | xargs rm -rf
