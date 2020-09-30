#!/bin/bash

err() {
    echo $1 1>&2
    exit 1
}

ROWS=$1
COLUMNS=$2

if [[ ${ROWS} -lt 1 ]] || [[ ${COLUMNS} -lt 1 ]] ; then
    err "The number of rows and columns must be positive numbers."
fi

for row in $(seq 1 ${ROWS}) ; do
    for col in $(seq 1 ${COLUMNS}) ; do
        if [[ ${col} -gt 1 ]] ; then
            echo -n " "
        fi
        echo -n "${row}*${col}=$(( ${row} * ${col} ))"
    done
    echo -ne "\n"
done
