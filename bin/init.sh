#!/bin/bash
declare -A INIT;

root=/root/bash/;
INIT[root]=${root};
INIT[lib]=${root}lib/;
INIT[bin]=${root}bin/;
INIT[etc]=${root}etc/;
INIT[parts]=${root}parts/;

declare -A CLUSTER;

CLUSTER[shard]="0 1 2 3 4 5";
CLUSTER[config]="0 1 2";

. ${INIT[bin]}autoload.sh ${INIT[etc]} ${INIT[parts]}
