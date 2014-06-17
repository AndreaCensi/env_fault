#!/bin/bash
set -e

export DATASETS=$FAULT_ROOT/datasets

echo FAULT_ROOT = $FAULT_ROOT
echo DATASETS   = $DATASETS

nice -n 10 fadus log-analysis -o out-log-analysis --console