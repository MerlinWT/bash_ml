#!/bin/bash
#Чт сен 28 16:11:15 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
${INIT[bin]}ml.sh cluster ssh-command ${1} ${2} service-status mongod;

