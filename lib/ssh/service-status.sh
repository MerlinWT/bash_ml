#!/bin/bash
#Чт сен 28 14:49:53 +03 2017
#status
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
${INIT[bin]}ml.sh ssh connect ${1} ${2} ${3} "service ${4} status | grep Active | awk '{ print \$2 }' | head -c-1"
