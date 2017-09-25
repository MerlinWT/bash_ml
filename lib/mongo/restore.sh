#!/bin/bash
#Пт сен  1 16:06:24 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
rm -f /var/lib/mongodb/mongod.lock
#sudo -u mongodb mongod -f /etc/mongodb.conf --repair
service mongod start
