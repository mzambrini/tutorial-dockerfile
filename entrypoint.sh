#!/bin/sh
set -e
ARGS="$@"
OUTPUT_FILE="/result/output.txt"
if [ "$#" = 0 ]; then
    ARGS= "Ciao mondo!"
fi
ussr=$(id -u)
printenv
echo "Questo comando è stato eseguito dall'utente $ussr"

echo $ARGS

echo $ARGS >> ${OUTPUT_FILE}

