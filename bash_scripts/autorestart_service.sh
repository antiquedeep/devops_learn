#!/bin/bash

service=nginx
if ! systemctl is-active --quiet $service;
then
	systemctl restart $service
	echo "$service restart at $(date)" >> /var/log/service_monitor.log
fi
