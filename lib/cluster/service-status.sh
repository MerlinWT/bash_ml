#!/bin/bash
#Чт сен 28 16:11:15 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
for i in ${CLUSTER[${2}]}; do
  echo -n " -- ${i} : ";
  ${INIT[bin]}ml.sh ssh service-status ${1} ${2} ${i} mongod; 
  echo -n " ";
done;
echo "";

