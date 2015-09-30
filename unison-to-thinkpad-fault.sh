#!/bin/bash
set -e
set -x

UPROFILE=unison-to-thinkpad-fault
mkdir -p ~/.unison/
rm -f ~/.unison/$UPROFILE.prf
ln -s $PWD/$UPROFILE.prf ~/.unison/$UPROFILE.prf
unison $UPROFILE -repeat 2 -force  /Volumes/1506-env_fault/env_fault/src  $*

