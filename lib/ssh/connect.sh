#!/bin/bash
#Чт авг 31 15:12:35 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "connect user node_name node_number [command]" ${1}
#
${INIT[bin]}ml.sh pass copy ${1} ${2};

#echo ${@:4};

ssh ${1}@${2}${3}.hpmdnetwork.ru "${@:4}";

