#!/bin/sh

echo "Backup sync starting at $(date '+%Y-%m-%d %H:%M:%S')..."

# Sync Backups
rclone sync /data/backups crypt-mjhot:/backups -v --create-empty-src-dirs --metadata --checksum

echo "Backup sync completed successfully at $(date '+%Y-%m-%d %H:%M:%S')!"
