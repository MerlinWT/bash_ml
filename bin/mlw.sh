 #!/bin/bash
. /root/bash/bin/init.sh;
while true; do
  ${INIT[lib]}${1}/${2}.sh ${@:3};
  sleep 1;
done;


