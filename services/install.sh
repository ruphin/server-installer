#!/bin/sh
WORKDIR=$(dirname $(readlink -f $0))

mv $WORKDIR/*.sh ~/
