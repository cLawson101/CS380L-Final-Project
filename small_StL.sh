#!/bin/bash

DESKTOP=../Desktop/
OUTPUT=../Results/

checkpoint (){
    sleep 5
    iostat > "${OUTPUT}${2}_${1}"
}

echo "Starting Base (small to large) test"

checkpoint 0 "small_StL"

for i in $(seq 1 1 65536)
do
    file_name="${DESKTOP}${i}_s"
    touch $file_name
    truncate -s 8K $file_name
done

checkpoint 1 "small_StL"
checkpoint 2 "small_StL"
checkpoint 3 "small_StL"
checkpoint 4 "small_StL"
checkpoint 5 "small_StL"
checkpoint 6 "small_StL"
checkpoint 7 "small_StL"
checkpoint 8 "small_StL"

for i in $(seq 1 1 4)
do
    file_name="${DESKTOP}${i}_m"
    touch $file_name
    truncate -s 1M $file_name
done

checkpoint 9  "small_StL"
checkpoint 10 "small_StL"
checkpoint 11 "small_StL"
checkpoint 12 "small_StL"
checkpoint 13 "small_StL"
checkpoint 14 "small_StL"
checkpoint 15 "small_StL"
checkpoint 16 "small_StL"

for i in $(seq 1 1 2)
do
    file_name="${DESKTOP}${i}_l"
    touch $file_name
    truncate -s 512M $file_name
done

checkpoint 17 "small_StL"
checkpoint 18 "small_StL"
checkpoint 19 "small_StL"
checkpoint 20 "small_StL"
checkpoint 21 "small_StL"
checkpoint 22 "small_StL"
checkpoint 23 "small_StL"
checkpoint 24 "small_StL"

echo "Finished Tests rming"

sync

for i in $(seq 1 1 65536)
do
    file_name="${DESKTOP}${i}_s"
    rm $file_name
done

checkpoint 25 "small_StL"
checkpoint 26 "small_StL"
checkpoint 27 "small_StL"
checkpoint 28 "small_StL"
checkpoint 29 "small_StL"
checkpoint 30 "small_StL"
checkpoint 31 "small_StL"
checkpoint 32 "small_StL"

for i in $(seq 1 1 4)
do
    file_name="${DESKTOP}${i}_m"
    rm $file_name
done

checkpoint 33 "small_StL"
checkpoint 34 "small_StL"
checkpoint 35 "small_StL"
checkpoint 36 "small_StL"
checkpoint 37 "small_StL"
checkpoint 38 "small_StL"
checkpoint 39 "small_StL"
checkpoint 40 "small_StL"

for i in $(seq 1 1 2)
do
    file_name="${DESKTOP}${i}_l"
    rm $file_name
done

checkpoint 41 "small_StL"
checkpoint 42 "small_StL"
checkpoint 43 "small_StL"
checkpoint 44 "small_StL"
checkpoint 45 "small_StL"
checkpoint 46 "small_StL"
checkpoint 47 "small_StL"
checkpoint 48 "small_StL"
checkpoint 49 "small_StL"

echo "Finished"