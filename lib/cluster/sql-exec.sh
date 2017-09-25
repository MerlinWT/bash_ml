#!/bin/bash
#Чт авг 31 16:12:03 +03 2017
#excute sql (mysql) on cluster node
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "sql-exec user node_name node_number sql_text" ${1}
#
mp="$(${INIT[bin]}ml.sh pass get ${1} ${2}-mysql)";
${INIT[bin]}ml.sh ssh connect ${1} ${2} ${3} "echo \"${@:4}\" | mysql -u ${1} -p${mp} hpmd";
