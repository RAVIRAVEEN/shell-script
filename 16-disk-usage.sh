#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1
message=""

while IFS=read line 
do 
 usage=$(echo $line | awk '{print $1f}' | cut -d % -f1)
 partition=$(echo $ line | awk '{print $1f}')
 if [ $usage -gt $DISK_THRESHOLD]
 then message="high disk usage on {partition :$usage"}
 done <<< DISK_USAGE