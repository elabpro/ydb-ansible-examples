#!/bin/bash
LD_LIBRARY_PATH=/opt/ydb/lib /opt/ydb/bin/ydb -e grpcs://ydb-node01:2135 -d /Root --ca-file /opt/ydb/certs/ca.crt --user root --no-password auth get-token --force > token-file
