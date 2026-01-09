#!/bin/bash

echo "Top 5 CPU utilization process"

ps aux --sort=-%cpu | head -n 6

echo

echo "Top 5 Memory utilization process"

ps aux --sort=-%mem | head -n 6

