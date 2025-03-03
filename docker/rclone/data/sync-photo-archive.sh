#!/bin/sh

echo "Archive Photo sync starting at $(date '+%Y-%m-%d %H:%M:%S')..."

# Sync Archive Photos
rclone sync /data/photos/archive crypt-mjgmail:/ -v --create-empty-src-dirs --metadata --checksum

echo "Archive Photo sync completed successfully at $(date '+%Y-%m-%d %H:%M:%S')!"
