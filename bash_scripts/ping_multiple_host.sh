#!/bin/bash

echo
for host in google.com github.com stackoverflow.com ;
do
ping -c 1 $host &>/dev/null & echo "$host is up" || echo "$host is down"
echo
done
