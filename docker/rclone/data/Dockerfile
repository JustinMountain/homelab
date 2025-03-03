ARG RCLONE_VERSION

FROM rclone/rclone:${RCLONE_VERSION}

COPY --chmod=755 sync-backups.sh /

COPY --chmod=755 sync-documents.sh /

COPY --chmod=755 sync-photo-archive.sh /

COPY --chmod=755 sync-photo-family.sh /

COPY --chmod=755 init.sh /

COPY cronjobs /etc/crontabs/root

ENTRYPOINT /bin/sh /init.sh