#!/bin/sh
set -e
OUTPUT_FILE="/result/output.txt"

echo "Questo comando è stato eseguito dall'utente $(id -nu)"

echo $@

echo $@ >> ${OUTPUT_FILE}

