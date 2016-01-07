#!/bin/bash
#this script is used to backup the users home directory
cd /home

tar -cf /var/tmp/homebackup.tar $USER

rm /var/tmp/homebackup.tar.gz

gzip /var/tmp/homebackup.tar

scp homebackup.tar.gz administrator@10.1.10.74:~

echo "Job Completed"
echo
