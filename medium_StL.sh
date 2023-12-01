#!/bin/bash

DESKTOP=../Desktop/
OUTPUT=../Results/

checkpoint (){
    sleep 5
    iostat > "${OUTPUT}${2}_${1}"
}

echo "Starting Base (small to large) test"

checkpoint 0 "medium_StL"

for i in $(seq 1 1 128)
do
    file_name="${DESKTOP}${i}_s"
    touch $file_name
    truncate -s 8K $file_name
done

checkpoint 1 "medium_StL"
checkpoint 2 "medium_StL"
checkpoint 3 "medium_StL"
checkpoint 4 "medium_StL"
checkpoint 5 "medium_StL"
checkpoint 6 "medium_StL"
checkpoint 7 "medium_StL"
checkpoint 8 "medium_StL"

for i in $(seq 1 1 4096)
do
    file_name="${DESKTOP}${i}_m"
    touch $file_name
    truncate -s 1M $file_name
done

checkpoint 9  "medium_StL"
checkpoint 10 "medium_StL"
checkpoint 11 "medium_StL"
checkpoint 12 "medium_StL"
checkpoint 13 "medium_StL"
checkpoint 14 "medium_StL"
checkpoint 15 "medium_StL"
checkpoint 16 "medium_StL"

for i in $(seq 1 1 1)
do
    file_name="${DESKTOP}${i}_l"
    touch $file_name
    truncate -s 512M $file_name
done

checkpoint 17 "medium_StL"
checkpoint 18 "medium_StL"
checkpoint 19 "medium_StL"
checkpoint 20 "medium_StL"
checkpoint 21 "medium_StL"
checkpoint 22 "medium_StL"
checkpoint 23 "medium_StL"
checkpoint 24 "medium_StL"

echo "Finished Tests rming"

sync

for i in $(seq 1 1 128)
do
    file_name="${DESKTOP}${i}_s"
    rm $file_name
done

checkpoint 25 "medium_StL"
checkpoint 26 "medium_StL"
checkpoint 27 "medium_StL"
checkpoint 28 "medium_StL"
checkpoint 29 "medium_StL"
checkpoint 30 "medium_StL"
checkpoint 31 "medium_StL"
checkpoint 32 "medium_StL"

for i in $(seq 1 1 4096)
do
    file_name="${DESKTOP}${i}_m"
    rm $file_name
done

checkpoint 33 "medium_StL"
checkpoint 34 "medium_StL"
checkpoint 35 "medium_StL"
checkpoint 36 "medium_StL"
checkpoint 37 "medium_StL"
checkpoint 38 "medium_StL"
checkpoint 39 "medium_StL"
checkpoint 40 "medium_StL"

for i in $(seq 1 1 1)
do
    file_name="${DESKTOP}${i}_l"
    rm $file_name
done

checkpoint 41 "medium_StL"
checkpoint 42 "medium_StL"
checkpoint 43 "medium_StL"
checkpoint 44 "medium_StL"
checkpoint 45 "medium_StL"
checkpoint 46 "medium_StL"
checkpoint 47 "medium_StL"
checkpoint 48 "medium_StL"
checkpoint 49 "medium_StL"

echo "Finished"