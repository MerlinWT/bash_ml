#!/bin/bash
#Чт сен 21 10:34:46 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
mongo hpmd -u hpmd -p password --authenticationDatabase hpmd
