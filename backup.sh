#!/bin/bash

# ==============================
# Linux Backup Automation Script
# ==============================

SRC_DIR=$1
DEST_DIR="/backup"
LOGFILE="$(pwd)/backup.log"
DATE=$(date "+%Y-%m-%d %H:%M:%S")
BACKUP_NAME="backup-$(date +%F).tar.gz"

# Check argument
if [ -z "$SRC_DIR" ]; then
    echo "Usage: $0 <source_directory>" | tee -a "$LOGFILE"
    exit 1
fi

# Check if source exists
if [ ! -d "$SRC_DIR" ]; then
    echo "$DATE ERROR: Source directory does not exist: $SRC_DIR" | tee -a "$LOGFILE"
    exit 1
fi

# Create backup directory
mkdir -p "$DEST_DIR"

# Create backup
tar -czf "$DEST_DIR/$BACKUP_NAME" "$SRC_DIR"

# Log result
if [ $? -eq 0 ]; then
    echo "$DATE SUCCESS: Backup completed for $SRC_DIR -> $DEST_DIR/$BACKUP_NAME" | tee -a "$LOGFILE"
else
    echo "$DATE ERROR: Backup failed for $SRC_DIR" | tee -a "$LOGFILE"
fi
