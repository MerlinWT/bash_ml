#!/bin/bash
declare -A INIT;

root=/root/bash/;
INIT[root]=${root};
INIT[lib]=${root}lib/;
INIT[bin]=${root}bin/;
INIT[etc]=${root}etc/;
INIT[parts]=${root}parts/;

. ${INIT[bin]}autoload.sh ${INIT[etc]} ${INIT[parts]}
