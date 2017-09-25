#!/bin/bash
#Пн сен  4 17:18:12 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
rm /var/redis/redis*;
/etc/init.d/redis-cache start;
