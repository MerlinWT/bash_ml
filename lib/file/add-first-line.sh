#!/bin/bash
#Вт сен 26 15:08:33 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "add-first-line file line" ${1}
#

echo "${2}" | cat - ${1} > ${1}_new;
mv ${1} ${1}_old;
mv ${1}_new ${1};
