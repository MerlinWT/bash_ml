#!/bin/bash
#Чт авг 31 17:52:47 +03 2017
#open user passmap file
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "open user" ${1}
#
nano ${INIT[etc]}passmap/${1};
