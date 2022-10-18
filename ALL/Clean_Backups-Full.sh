#!/bin/bash
KEEP_DAYS=2
BACKUP_DIR="/backups/dir-*/*"
#Check is there are last day backups present. If not then don't remove anything.
[ `/usr/bin/find $BACKUP_DIR -ctime -1 -type d | wc -l` -lt 1 ] && echo "Exit script." && exit 
/usr/bin/find $BACKUP_DIR -mtime +$KEEP_DAYS -type d  -exec rm -rf {} \;
