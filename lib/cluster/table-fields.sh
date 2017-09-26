#!/bin/bash
#Вт сен 26 14:47:04 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "table-fields user node_name node_num table" ${1}
#
${INIT[bin]}ml.sh pass copy ${1} ${2};

mkdir -p /tmp/ml/;
tmp="/tmp/ml/${1}${2}${3}.tmp";

${INIT[bin]}ml.sh cluster sql-exec root db 0 'show fields from user_banner;' > ${tmp};
tail -n +2 ${tmp} | awk '{ print $1 }' | tr '\n' ' ';
rm -f ${tmp};
