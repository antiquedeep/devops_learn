#!/bin/bash
# PASS directory/file path while running script in ""
# first for source and second for destination

SOURCEDIR=$1
BACKUPDIR=$2
DATE=$(date +%F-%H-%M)
tar -czvf "$BACKUPDIR/BACKUP-$DATE.tar.gz" "$SOURCEDIR"
echo "Backup created"
