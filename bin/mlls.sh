 #!/bin/bash
. /root/bash/bin/init.sh;

cd ${INIT[lib]};
for d in $(find * -type d);
do
  echo -en "\033[1m${d}\n\033[0m";
  cd ./${d}/;
  for f in *.sh;
  do
    echo -n "  ${d} ";
    c="$(echo ${f} | cut -d '.' -f 1)";
    echo "${c}";
    if [[ ${1} == 'usage' ]];
    then
      echo -n "    ";
      ${INIT[bin]}ml.sh ${d} ${c}
    fi;
  done;
  cd ..;
done;


