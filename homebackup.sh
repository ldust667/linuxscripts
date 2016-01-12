#!/bin/bash
#this script is used to backup the users home directory

echo "Valid home folders:"
ls /home
echo
echo "Which home folder would you like to backup?:"
read HOMEFOLDER

BACKUPDIR=/home
TIMESTAMP=$(date | awk '{ print $1 "_" $2"_"$3"_"$6 }')
TARFILENAME="/var/tmp/$HOMEFOLDER.$TIMESTAMP.tar"
GZIPFILENAME="/var/tmp/$TARFILENAME.gz"
REMOTESERVER="10.1.10.74"
REMOTEUSER="administrator"
REMOTEDIR="~"
LOGFILE="/var/tmp/homebackuplog.txt"

cd $BACKUPDIR
tar -cf $TARFILENAME $HOMEFOLDER
gzip $TARFILENAME
rsync $GZIPFILENAME $REMOTEUSER@$REMOTERSERVER:$REMOTEDIR
date >> $LOGFILE
echo "Backup Complete"




