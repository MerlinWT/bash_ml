#!/bin/bash
#Пн сен  4 17:38:48 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
/var/www/hpmd-cms/console dev reload
