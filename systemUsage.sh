#!/bin/bash

echo "Checking Disk Usage"
read -p "Enter Disk Name:" disk

diskUtilization=`df -h|grep "$disk"|awk '{print $8}'|cut -d '%' -f 1`
if [ $diskUtilization -gt 80 ];
then
	echo "Disk utilization is $diskUtilization%. Expand memory or free up space"
else
	echo "Disk utilization is $diskUtilization%. Enough disk space available"
fi
