#!/bin/bash
#Ср окт  4 16:31:35 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
rs=/var/redis/redis-cache.sock

echo "FLUSHDB" | redis-cli -s ${rs}
echo "FLUSHALL" | redis-cli -s ${rs}
