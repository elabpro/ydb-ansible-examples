#!/bin/bash
export LD_LIBRARY_PATH=/opt/ydb/lib
/opt/ydb/bin/ydbd -f token-file --ca-file /opt/ydb/certs/ca.crt -s grpcs://`hostname -s`:2135 \
    admin database /Root/testdb create ssd:1
echo $?
