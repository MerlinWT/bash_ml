#!/bin/bash

for i in ${@}; do
  cd ${i};
  for f in ./*.sh; do
    . ${f}
  done;
done;
cd ${bin};
