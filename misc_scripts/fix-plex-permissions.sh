#!/usr/bin/bash
# Set permissions for plex
chown -R marco:sharedrives /mnt/toshiba_14tb_1/v
chmod -R 777 /mnt/toshiba_14tb_1/v
chown -R marco:sharedrives /mnt/x300_8tb/b/videocourses
chown 777 /mnt/x300_8tb/b
chown -R 777 /mnt/x300_8tb/b/videocourses
systemctl restart plexmediaserver
