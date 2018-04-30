#!/bin/sh
WORKDIR=$(dirname $(readlink -f $0))

cp $WORKDIR/.bash_aliases /root/.bash_aliases
cat $WORKDIR/docker >> /etc/bash_completion.d/docker
