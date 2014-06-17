../workspace/1406-heli/#!/bin/bash
set -e
set -x

UPROFILE=unison-to-heli-fault
mkdir -p ~/.unison/
rm -f ~/.unison/$UPROFILE.prf
ln -s $PWD/$UPROFILE.prf ~/.unison/$UPROFILE.prf
unison $UPROFILE -repeat 2 -force  /data/work/scm/environments/env_fault/src  $*

