#!/bin/bash
echo "Format disk by using YDB. This action must be performed for every disk"
export LD_LIBRARY_PATH=/opt/ydb/lib
/opt/ydb/bin/ydbd admin bs disk obliterate /dev/disk/by-partlabel/ydb_disk_ssd_01
