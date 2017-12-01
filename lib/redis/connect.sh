#!/bin/bash
#Чт окт  5 11:11:15 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
redis-cli -s /var/redis/redis-cache.sock
