#! /bin/bash
DATEVAR=`date +20\%y\%m\%d_\%H\%M\%S`
sudo mysqldump -u root -p drivingSchool > /root/BACKUPS/CAbackup${DATEVAR}.sql && ./Dropbox-Uploader/dropbox_uploader.sh upload ./BACKUPS/CAbackup${DATEVAR}.sql /CAbackup${DATEVAR}.sql
