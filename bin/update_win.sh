#! /bin/bash

wget --output-document ~/temp/rclone.zip https://downloads.rclone.org/rclone-current-windows-amd64.zip

7z e -y ~/temp/rclone.zip -o/mnt/c/Users/aria_/Apps/rclone

cp /mnt/c/Users/aria_/Apps/rclone/rclone.exe /mnt/c/Users/aria_/Apps/bin
