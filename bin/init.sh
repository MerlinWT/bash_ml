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

SHORTCUT[cms]="${INIT[bin]}ml.sh ssh connect root cms -";
SHORTCUT[loader]="${INIT[bin]}ml.sh ssh connect root loader -";

#. ${INIT[bin]}autoload.sh ${INIT[etc]} ${INIT[parts]}
