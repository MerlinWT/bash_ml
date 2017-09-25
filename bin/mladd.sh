#!/bin/bash
. /root/bash/bin/init.sh;

dir="${INIT[lib]}${1}";
mkdir -p ${dir};
cd ${dir};

n="${2}.sh"
if [[ -f "$n" ]];
 then
  echo "Commad '${2}' alrady exists. Run 'mlch ${1} ${2}' to view it.";
  exit;
fi;

echo "#!/bin/bash" > ${n};
#put create date
printf "#" >> ${n}; 
date >> ${n};
#put comment
echo "#${3}" >> ${n};
#put init
echo ". /root/bash/bin/init.sh" >> ${n};
#put usage
echo ". \${INIT[parts]}usage.sh \"${4}\" \${1}" >> ${n};
echo "#" >> ${n}
#add permission on execute
chmod u+x ${n};

#open created script to edit
nano +7 ${n};


