#!/bin/bash
#Пт окт 13 16:33:10 +03 2017
#
. /root/bash/bin/init.sh
. ${INIT[parts]}usage.sh "" ${1}
#
/var/www/hpmd-cms/console  minify;
${ml} hpmd sync banner;
