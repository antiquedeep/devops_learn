#!/bin/bash

usage=$(df -h / | grep '/' | awk '{print $5}' | sed 's/%//')

if [ "$usage" -gt 80 ];
then
echo "Disk Usage is at ${usage}%. Time to clean up!" | s-nail -s "Disk Alert" admin@example.com"
fi

