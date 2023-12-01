#!/bin/bash

DESKTOP=../Desktop/
OUTPUT=../Results/

checkpoint (){
    sleep 5
    iostat > "${OUTPUT}${2}_${1}"
}

echo "Starting Base (small to large) test"

checkpoint 0 "base_StL"

for i in $(seq 1 1 16384)
do
    file_name="${DESKTOP}${i}_s"
    touch $file_name
    truncate -s 8K $file_name
done

checkpoint 1 "base_StL"
checkpoint 2 "base_StL"
checkpoint 3 "base_StL"
checkpoint 4 "base_StL"
checkpoint 5 "base_StL"
checkpoint 6 "base_StL"
checkpoint 7 "base_StL"
checkpoint 8 "base_StL"

for i in $(seq 1 1 128)
do
    file_name="${DESKTOP}${i}_m"
    touch $file_name
    truncate -s 1M $file_name
done

checkpoint 9  "base_StL"
checkpoint 10 "base_StL"
checkpoint 11 "base_StL"
checkpoint 12 "base_StL"
checkpoint 13 "base_StL"
checkpoint 14 "base_StL"
checkpoint 15 "base_StL"
checkpoint 16 "base_StL"

for i in $(seq 1 1 1)
do
    file_name="${DESKTOP}${i}_l"
    touch $file_name
    truncate -s 128M $file_name
done

checkpoint 17 "base_StL"
checkpoint 18 "base_StL"
checkpoint 19 "base_StL"
checkpoint 20 "base_StL"
checkpoint 21 "base_StL"
checkpoint 22 "base_StL"
checkpoint 23 "base_StL"
checkpoint 24 "base_StL"

echo "Finished Tests rming"

sync

for i in $(seq 1 1 1)
do
    file_name="${DESKTOP}${i}_l"
    rm $file_name
done

checkpoint 25 "base_StL"
checkpoint 26 "base_StL"
checkpoint 27 "base_StL"
checkpoint 28 "base_StL"
checkpoint 29 "base_StL"
checkpoint 30 "base_StL"
checkpoint 31 "base_StL"
checkpoint 32 "base_StL"

for i in $(seq 1 1 128)
do
    file_name="${DESKTOP}${i}_m"
    rm $file_name
done

checkpoint 33 "base_StL"
checkpoint 34 "base_StL"
checkpoint 35 "base_StL"
checkpoint 36 "base_StL"
checkpoint 37 "base_StL"
checkpoint 38 "base_StL"
checkpoint 39 "base_StL"
checkpoint 40 "base_StL"

for i in $(seq 1 1 16384)
do
    file_name="${DESKTOP}${i}_s"
    rm $file_name
done

checkpoint 41 "base_StL"
checkpoint 42 "base_StL"
checkpoint 43 "base_StL"
checkpoint 44 "base_StL"
checkpoint 45 "base_StL"
checkpoint 46 "base_StL"
checkpoint 47 "base_StL"
checkpoint 48 "base_StL"
checkpoint 49 "base_StL"

echo "Finished"