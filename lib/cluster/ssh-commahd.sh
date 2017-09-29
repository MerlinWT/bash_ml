#!/bin/bash
#Чт сен 28 17:27:02 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
declare -A RESULT;

for i in ${CLUSTER[${2}]}; do
  RESULT[${i}]="$(${INIT[bin]}ml.sh ssh ${3} ${1} ${2} ${i} mongod & pid=$!)";
  pid_list+=" $pid";
done; 

wait $pid_list;

echo -n "| ";
echo -n ${RESULT[@]} | sed 's/ / | /g';
echo " |";

