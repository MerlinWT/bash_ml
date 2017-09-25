#!/bin/bash
#Чт сен 21 10:42:17 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
bash -c cd /var/www/hpmd-${1}
