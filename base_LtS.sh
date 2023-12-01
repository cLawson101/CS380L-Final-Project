#!/bin/bash

DESKTOP=../Desktop/
OUTPUT=../Results/

checkpoint (){
    sleep 5
    iostat > "${OUTPUT}${2}_${1}"
}

echo "Starting Base (large to small) test"

checkpoint 0 "base_LtS"

for i in $(seq 1 1 1)
do
    file_name="${DESKTOP}${i}_l"
    touch $file_name
    truncate -s 128M $file_name
done

checkpoint 1 "base_LtS"
checkpoint 2 "base_LtS"
checkpoint 3 "base_LtS"
checkpoint 4 "base_LtS"
checkpoint 5 "base_LtS"
checkpoint 6 "base_LtS"
checkpoint 7 "base_LtS"
checkpoint 8 "base_LtS"

for i in $(seq 1 1 128)
do
    file_name="${DESKTOP}${i}_m"
    touch $file_name
    truncate -s 1M $file_name
done

checkpoint 9  "base_LtS"
checkpoint 10 "base_LtS"
checkpoint 11 "base_LtS"
checkpoint 12 "base_LtS"
checkpoint 13 "base_LtS"
checkpoint 14 "base_LtS"
checkpoint 15 "base_LtS"
checkpoint 16 "base_LtS"

for i in $(seq 1 1 16384)
do
    file_name="${DESKTOP}${i}_s"
    touch $file_name
    truncate -s 8K $file_name
done

checkpoint 17 "base_LtS"
checkpoint 18 "base_LtS"
checkpoint 19 "base_LtS"
checkpoint 20 "base_LtS"
checkpoint 21 "base_LtS"
checkpoint 22 "base_LtS"
checkpoint 23 "base_LtS"
checkpoint 24 "base_LtS"

sync

echo "Finished Tests rming"

for i in $(seq 1 1 1)
do
    file_name="${DESKTOP}${i}_l"
    rm $file_name
done

checkpoint 25 "base_LtS"
checkpoint 26 "base_LtS"
checkpoint 27 "base_LtS"
checkpoint 28 "base_LtS"
checkpoint 29 "base_LtS"
checkpoint 30 "base_LtS"
checkpoint 31 "base_LtS"
checkpoint 32 "base_LtS"

for i in $(seq 1 1 128)
do
    file_name="${DESKTOP}${i}_m"
    rm $file_name
done

checkpoint 33 "base_LtS"
checkpoint 34 "base_LtS"
checkpoint 35 "base_LtS"
checkpoint 36 "base_LtS"
checkpoint 37 "base_LtS"
checkpoint 38 "base_LtS"
checkpoint 39 "base_LtS"
checkpoint 40 "base_LtS"

for i in $(seq 1 1 16384)
do
    file_name="${DESKTOP}${i}_s"
    rm $file_name
done

checkpoint 41 "base_LtS"
checkpoint 42 "base_LtS"
checkpoint 43 "base_LtS"
checkpoint 44 "base_LtS"
checkpoint 45 "base_LtS"
checkpoint 46 "base_LtS"
checkpoint 47 "base_LtS"
checkpoint 48 "base_LtS"
checkpoint 49 "base_LtS"

echo "Finished"