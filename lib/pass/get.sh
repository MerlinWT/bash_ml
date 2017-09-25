#!/bin/bash
#Чт авг 31 15:09:32 +03 2017
#get pass of cluster node
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "get user node_name" ${1}
#
. ${INIT[etc]}passmap/${1};

echo -n ${PASSMAP[${2}]};
