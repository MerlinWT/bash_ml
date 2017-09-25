#!/bin/bash
#Пт сен  1 10:00:37 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
ENV=${1} /var/www/hpmd-cms/console dev sync
