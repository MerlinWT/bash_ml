 #!/bin/bash
. /root/bash/bin/init.sh;

screen -dm bash -c "${INIT[lib]}${1}/${2}.sh ${@:3}";


