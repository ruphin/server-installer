#!/bin/sh
WORKDIR=$(dirname $(readlink -f $0))

cat $WORKDIR/ps >> ~/.bashrc
