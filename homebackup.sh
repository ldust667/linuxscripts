#!/bin/bash
#this script is used to backup the users home directory

#echo "Valid home folders:"
#ls /home
#echo
#echo "Which home folder would you like to backup?:"
#read HOMEFOLDER
###########################################################################
#config variables
##########################################################################
HOMEFOLDER="dustin"
BACKUPDIR=/home
TIMESTAMP=$(date | awk '{ print $1 "_" $2 "_" $3 "_" $6 }')
TARFILENAME="/var/tmp/$HOMEFOLDER.$TIMESTAMP.tar"
GZIPFILENAME="$TARFILENAME.gz"
REMOTESERVER="10.1.10.74"
REMOTEUSER="administrator"
REMOTEDIR="~"
LOGFILE="/var/tmp/homebackuplog.txt"
DELDATE=$(date -d "15 days ago" '+%a_%b_%d_%Y')
DELTARFILE="$DELDATE.$HOMEFOLDER.tar"
DELGZIPFILE=$DELTARFILE.gz"

#########################################################################


cd $BACKUPDIR




tar -cf $TARFILENAME $HOMEFOLDER

if [ -f $GZIPFILENAME ]
then
rm $GZIPFILENAME
fi
gzip $TARFILENAME

sshpass -p "welost2u" scp $GZIPFILENAME $REMOTEUSER@$REMOTESERVER:$REMOTEDIR
date >> $LOGFILE
echo "Backup Complete"
############################################################################
cd/var/tmp

rm $DELTARFILE
rm $DELGZIPFILE
echo "15 days ago removed"
