#!/bin/bash
LOGDIR="/var/log/anaconda"
MAXSIZE=100
for logfile in "$LOGDIR"/*.log;
do
	FILESIZE=$(du -m "$logfile" | cut -f1)
	if [ "$FILESIZE" -ge "$MAXSIZE" ];
	then
		mv "$logfile" "$logfile.$(date +%F-%H-%M-%S)"
		gzip "$logfile.$(date +%F-%H-%M-%S)"
		touch "$logfile"
	fi
done
