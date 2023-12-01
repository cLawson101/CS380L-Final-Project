#!/bin/bash

DESKTOP=../Desktop/
OUTPUT=../Append_Results/

FILE="${DESKTOP}1_s"

checkpoint (){
    sleep 5
    iostat > "${OUTPUT}${1}"
}

echo "Starting Base (small to large) test"

for i in $(seq 1 1 16384)
do
    file_name="${DESKTOP}${i}_s"
    touch $file_name
    truncate -s 8K $file_name
done

for i in $(seq 1 1 128)
do
    file_name="${DESKTOP}${i}_m"
    touch $file_name
    truncate -s 1M $file_name
done

for i in $(seq 1 1 1)
do
    file_name="${DESKTOP}${i}_l"
    touch $file_name
    truncate -s 128M $file_name
done

sync

echo "starting appending"

FACTOR=4

for i in $(seq 1 1 200)
do
    MOD=$((i % FACTOR))

    ../append.o "${FILE}"

    if [ $MOD -eq 0 ]
    then
        TEMP=$((i / 4))
        checkpoint ${TEMP}
    fi

done