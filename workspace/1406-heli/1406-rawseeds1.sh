#source ../../environment.sh
#!/bin/bash
set -e

export DATASETS=$FAULT_ROOT/datasets

instances=rsf-all
instances=rsf-1
strategies=quick

out=out-1406-$instances
out=tmp-andrea/$out

nice -n 10 fadus  run  -o $out --instances "$instances" --strategies "$strategies" --console