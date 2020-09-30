#!/bin/bash

ROWS=$1
COLUMNS=$2

for row in $(seq 1 ${ROWS}) ; do
    for col in $(seq 1 ${COLUMNS}) ; do
        if [[ ${col} -gt 1 ]] ; then
            echo -n " "
        fi
        echo -n "${row}*${col}=$(( ${row} * ${col} ))"
    done
    echo -ne "\n"
done
