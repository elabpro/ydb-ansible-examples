#!/bin/bash/
opt/ydb/bin/ydb  --ca-file /opt/ydb/certs/ca.crt -e grpcs://`hostname -s`:2135  -d /Root/testdb --user root --no-password  yql -s 'ALTER USER root PASSWORD "passw0rd"'
