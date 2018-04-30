#!/bin/sh
WORKDIR=$(dirname $(readlink -f $0))

for INSTALLER in $WORKDIR/*/install.sh
do
  if [ -f $INSTALLER -a -x $INSTALLER ]; then
    $INSTALLER
  fi
done
