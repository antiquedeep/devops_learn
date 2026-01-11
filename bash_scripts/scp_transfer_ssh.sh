#!/bin/bash 
SOURCE_FILE="/home/ubuntu/project.zip" 
TARGET_SERVER="user@192.168.1.100" 
TARGET_PATH="/var/www/html" 
scp "$SOURCE_FILE" "$TARGET_SERVER:$TARGET_PATH" 
echo "File transferred: $SOURCE_FILE -> $TARGET_SERVER:$TARGET_PATH"
