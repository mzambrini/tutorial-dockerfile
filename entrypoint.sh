#!/bin/sh
set -e
ARGS="$@"
OUTPUT_FILE="/result/output.txt"
if [ "$#" = 0 ]; then
    ARGS= "Ciao mondo!"
fi
id


echo $ARGS

echo $ARGS >> ${OUTPUT_FILE}

