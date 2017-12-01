#!/bin/bash
declare -A INIT;

root=/root/bash/;
INIT[root]=${root};
INIT[lib]=${root}lib/;
INIT[bin]=${root}bin/;
INIT[etc]=${root}etc/;
INIT[parts]=${root}parts/;

declare -A CLUSTER;

CLUSTER[cms]=-
CLUSTER[stat]=-
CLUSTER[www]=-
CLUSTER[banner]=$(for i in {0..2}; do echo -n "${i} "; done;)
CLUSTER[worker]=$(for i in {0..42}; do echo -n "${i} "; done;)
CLUSTER[php]=$(for i in {0..4}; do echo -n "${i} "; done;)
CLUSTER[db]=$(for i in {0..12}; do echo -n "${i} "; done;)
#mongo
CLUSTER[shard]=$(for i in {0..5}; do echo -n "${i} "; done;);
CLUSTER[config]=$(for i in {0..2}; do echo -n "${i} "; done;)

declare -A SHORTCUT;

ml=${INIT[bin]}ml.sh;

SHURTCUT[edit]="nano ~/bash/bin/init.sh";
SHORTCUT[cms]="${ml} ssh connect root cms -";
SHORTCUT[cms-dev]="${ml} ssh connect root cms-dev -";
SHORTCUT[loader]="${ml} ssh connect root loader -";
SHORTCUT[wh]="${ml} wifi home up";
#hpmd
SHORTCUT[sync-php]="${ml} hpmd sync php";
SHORTCUT[sync-banner]="${ml} hpmd sync banner";

#applications
SHORTCUT[phpstorm]="sh /usr/lib/PhpStorm-171.4694.2/bin/phpstorm.sh";
SHOTCUT[chrome]="su kov;google-chrome &;exit;";

#mini-scripts
SHORTCUT[restore]="${ml} cluster restore-local do;";

#. ${INIT[bin]}autoload.sh ${INIT[etc]} ${INIT[parts]}
