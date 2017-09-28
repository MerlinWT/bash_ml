#!/bin/bash
#Чт авг 31 15:12:35 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "connect user node_name node_number [command]" ${1}
#
${INIT[bin]}ml.sh pass copy ${1} ${2};

#echo ${@:4};

if [ ${3} = '-' ]; then
 num='';
else
 num=${3};
fi;

ssh ${1}@${2}${num}.hpmdnetwork.ru "${@:4}";

