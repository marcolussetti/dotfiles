#!/usr/bin/bash
# Set permissions for plex
chown -R marco:sharedrives /mnt/toshiba_14tb_1/v
chmod -R 777 /mnt/toshiba_14tb_1/v
chown -R marco:sharedrives /mnt/seagate_18tb/v
chmod -R 777 /mnt/seagate_18tb/v
systemctl restart plexmediaserver
