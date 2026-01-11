#!/bin/bash
THRESHOLD=80
LOGFILE="/var/log/disk_report.log"
df -h | awk 'NR==1 {next} {print $5 " " $6}' | while read output;
do
	USAGE=$(echo "$output" | awk '{print $1}' | sed 's/%//')
	PARTITION=$(echo $output | awk '{print $2}')
	if [ "$USAGE" -ge "$THRESHOLD" ];
	then
		echo "Disk usage is critical ($USAGE%) - Parition: $PARTITION" | tee -a "$LOGFILE"
	fi
done
