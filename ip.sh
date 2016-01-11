#!/bin/bash

#if config eth0 gets ip config info from ineterface
#grep 'inet addr:'-filters output to just ip 4 line
#awk '{print $2}' - filter only the second column of data in the line
#cut  -d: -f2 uses colon a delimiter and prints second column of data

echo "Interfaces available:"
ifconfig | grep "eth"
ifconfig | grep "wlan"
echo "Enter the interface you would like"

read INTERFACENAME

ifconfig $INTERFACENAME |grep "inet addr:"|awk '{print $2}'|cut -d: -f2

