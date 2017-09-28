#!/bin/bash
#Чт сен 28 15:56:40 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
for i in ${CLUSTER[${2}]}; do
  echo -n " -- ${i} : "; 
  ${INIT[bin]}ml.sh ssh cpu-usage ${1} ${2} ${i} mongod; 
  echo -n " "; 
done; 
echo "";

