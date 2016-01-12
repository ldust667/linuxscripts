#!/bin/bash
echo "Enter a domain name"
read INTERFACENAME
ping $INTERFACENAME -c3|grep "PING"|awk '{print $3}'

