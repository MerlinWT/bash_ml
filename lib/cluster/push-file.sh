#!/bin/bash
#Чт авг 31 16:48:59 +03 2017
#copy file from cluster node
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "scp user node_name node_number remote_file local_path" ${1}
#
${INIT[bin]}ml.sh pass get ${1} ${2} | xclip -selection clipboard;

scp ${1}@${2}${3}.hpmdnetwork.ru:${4} ${5}
