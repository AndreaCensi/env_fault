#source ../../environment.sh
set -e

export DATASETS=$FAULT_ROOT/datasets

instances=er1a,er1b
strategies=quick

out=tmp-andrea/out-1406-er1

nice -n 5 fadus  run  -o $out --instances "$instances" --strategies "$strategies" --console
