#!/bin/bash
export LD_LIBRARY_PATH=/opt/ydb/lib
/opt/ydb/bin/ydbd -f token-file --ca-file /opt/ydb/certs/ca.crt -s grpcs://`hostname -f`:2135 \
    admin blobstorage config init --yaml-file  /opt/ydb/cfg/config.yaml
echo $?
