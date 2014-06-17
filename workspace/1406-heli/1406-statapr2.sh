#source ../../environment.sh
#!/bin/bash
set -e

export DATASETS=$FAULT_ROOT/datasets

nice -n 10 fadus  run  -o out-1406-statapr2  --instances "statapr2_all" --strategies "*" --console