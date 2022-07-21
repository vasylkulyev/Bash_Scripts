#!/bin/bash
user="user"
DATE=$(date +%d%m%Y)
cd /home/user
#make archive of documents
tar -cvf $DATE-documents.tar /home/$user/Documents
#Mount external HDD
/usr/bin/mount $(blkid -U '589c94a0-84b5-483d-80ee-8e3c996baeea') /media/$user/home-pc-backup
BACKUP_DIR="/media/$user/home-pc-backup/HOME-PC/Documents"
#Transfer Archive to external HDD
mv $DATE-documents.tar $BACKUP_DIR
#If the Fresh BackUP present
[ `/usr/bin/find $BACKUP_DIR/* -ctime -1 -type f | wc -l` -lt 1 ] && echo "`date '+%d/%m/%Y'` NO Fresh Backup." && sleep 3 && umount /media/$user/home-pc-backup && exit
###/usr/bin/find $BACKUP_DIR/* -mtime +2 -type f ;
#Delete FIles Older 2 days
/usr/bin/find $BACKUP_DIR/* -mtime +2 -type f -exec rm -rf {} \;
sleep 10
/usr/bin/umount $(blkid -U '589c94a0-84b5-483d-80ee-8e3c996baeea') /media/$user/home-pc-backup
echo "`date '+%d/%m/%Y'` Backup Done."
