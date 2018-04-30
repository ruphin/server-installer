#!/bin/sh
WORKDIR=$(dirname $(readlink -f $0))

# Install the motd
cp $WORKDIR/motd /etc/motd
