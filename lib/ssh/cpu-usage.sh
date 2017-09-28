#!/bin/bash
#Вт сен 26 20:28:54 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#


#${INIT[bin]}ml.sh ssh connect ${1} ${2} ${3} 'top -n 1 -b | sed -n 3p'

#echo ${cpu_info};

${INIT[bin]}ml.sh ssh connect ${1} ${2} ${3} "uptime | awk '{ print \$10 }' | head -c-2"
