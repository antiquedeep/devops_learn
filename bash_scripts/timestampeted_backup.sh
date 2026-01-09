#!/bin/bash

tar -czvf "backup_$(date +%F_%H-%M-%S).tar.gz" /etc/nginx/
