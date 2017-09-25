#!/bin/bash
#Пт сен  1 10:26:50 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "home up" ${1}
#
${INIT[bin]}ml.sh pass copy kov wifi

nmcli -a c ${1} TP-LINK_35EA
