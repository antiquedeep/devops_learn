#!/bin/bash

echo "CPU Info:" > report_$(date +%F).txt
lscpu >> report_$(date +%F).txt

echo -e "\nMemory Info:" >> report_$(date +%F).txt
free -h >> report_$(date +%F).txt

echo -e "\nDisk Usage:" >> report_$(date +%F).txt
df -hT >> report_$(date +%F).txt
