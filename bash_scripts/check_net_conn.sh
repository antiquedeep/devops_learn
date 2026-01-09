#!/bin/bash

ping -q -c 1 -W 1 google.com > /dev/null
[ $? -eq 0 ] && echo "Online" || echo "Offline"

