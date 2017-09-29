#!/bin/bash
#Чт сен 28 15:56:40 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
${INIT[bin]}ml.sh cluster ssh-command ${1} ${2} cpu-usage;

