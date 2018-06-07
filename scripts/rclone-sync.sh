#!/bin/bash

if pidof -o %PPID -x “rclone-sync.sh”; then
    exit 1
fi
rclone sync --tpslimit 9 --copy-links --delete-excluded --exclude-from ~/.config/rclone/excludes.txt ~/work work_dropbox:work
exit
