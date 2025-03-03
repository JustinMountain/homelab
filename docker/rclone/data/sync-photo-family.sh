#!/bin/sh

echo "Family Photo sync starting at $(date '+%Y-%m-%d %H:%M:%S')..."

# Sync Family Photos
rclone sync /data/photos/family-photos crypt-imgmail:/ -v --create-empty-src-dirs --metadata --checksum

echo "Family Photo sync completed successfully at $(date '+%Y-%m-%d %H:%M:%S')!"
