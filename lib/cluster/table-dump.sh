#!/bin/bash
#Чт авг 31 15:26:38 +03 2017
#create csv dump of mysql table into /tmp 
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "table-dump user node_name node_number table_name" ${1}
#
${INIT[bin]}ml.sh cluster sql-exec ${1} ${2} ${3} "select ${4}.* into outfile '/tmp/${4}_${2}${3}.csv' from ${4};";
echo "/tmp/${4}_${2}${3}.csv";
