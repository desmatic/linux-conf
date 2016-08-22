#!/bin/sh
find /sys/class/scsi_host/*/ -name 'scan' -exec echo "- - -" >  '{}' \;
find /sys/class/scsi_device/*/device/ -name 'rescan' -exec echo 1 > '{}' \;
find /sys/block/sd*/device/ -name 'rescan' -exec echo 1 > '{}' \;
