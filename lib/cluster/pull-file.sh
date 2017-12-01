#!/bin/bash
#Вт сен 26 09:43:22 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "pull-file user node_name node_num full_file_name to_path " ${1}
#
${INIT[bin]}ml.sh pass get ${1} ${2} | xclip -selection clipboard;


if [ ${3} = '-' ]; then
 num='';
else
 num=${3};
fi;

scp ${1}@${2}${num}.hpmdnetwork.ru:${4} ${5};
