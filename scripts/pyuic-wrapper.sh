#!/bin/sh

PYUIC4=$1
LD_LIBRARY_PATH=$2:$LD_LIBRARY_PATH
PYTHONPATH=$3:$PYTHONPATH
PYTHON=$4
shift 4

export LD_LIBRARY_PATH PYTHONPATH

exec $PYTHON $(dirname $0)/pyuic-wrapper.py $@
