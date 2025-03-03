#!/bin/sh

echo "Document sync starting at $(date '+%Y-%m-%d %H:%M:%S')..."

# Sync Documents
rclone sync /data/documents crypt-mjhot:/documents -v --create-empty-src-dirs --metadata --checksum

echo "Document sync completed successfully at $(date '+%Y-%m-%d %H:%M:%S')!"
