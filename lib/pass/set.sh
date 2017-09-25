#!/bin/bash
#Чт авг 31 14:59:18 +03 2017
#add password into passmap
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "set user node_name password" ${1}
#
file=${INIT[etc]}passmap/${1};

if [[ ! -f ${file} ]];
then
  echo "declare -A PASSMAP" > ${file};
  echo "" >> ${file};
fi;

echo "PASSMAP[${2}]=\"${3}\"" >> ${file};
