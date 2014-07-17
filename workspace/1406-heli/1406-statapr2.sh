#!/bin/bash
set -e

export DATASETS=$FAULT_ROOT/datasets

instances=statapr2_one
out=tmp-andrea/out-1406-statapr2_one
strategies='quick'

nice -n 10 fadus  run  -o $out --instances "$instances" --strategies "$strategies" --console