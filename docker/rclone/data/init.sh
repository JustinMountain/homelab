#!/bin/sh

echo "Rclone container initialized."

/sync-backups.sh

/sync-documents.sh

/sync-photo-family.sh

/sync-photo-archive.sh

echo "Starting cron daemon..."

crond -f -d 8