#!/bin/bash
#Пн окт 30 09:34:38 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
echo "MYSQL"
${ml} mysql run do;
echo "REDIS"
${ml} redis restore do;
echo "MONGO"
${ml} mongo restore do;
