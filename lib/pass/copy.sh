#!/bin/bash
#Чт авг 31 18:26:41 +03 2017
#copy pass of node into clipboard
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "copy user node_name" ${1}
#
. ${INIT[etc]}passmap/${1};

echo -n ${PASSMAP[${2}]} | xclip -selection clipboard;
