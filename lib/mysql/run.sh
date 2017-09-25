#!/bin/bash
#Пн сен  4 17:22:33 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
mysqld_multi start 0-10
