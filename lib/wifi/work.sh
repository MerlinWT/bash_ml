#!/bin/bash
#Чт ноя  9 10:23:42 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "work up" ${1}
#
${INIT[bin]}ml.sh pass copy kov wifi-work

nmcli -a c ${1} HandhWiFi


