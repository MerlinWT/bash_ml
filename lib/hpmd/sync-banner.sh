#!/bin/bash
#Чт сен 14 10:10:43 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
for i in 0 1; do
cp -r /var/www/hpmd-cms/banner/upload/ /var/www/hpmd-banner${i}/banner/;
done;
