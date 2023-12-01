#!/bin/bash

DESKTOP=../Desktop/
OUTPUT=../Results/

checkpoint (){
    sleep 5
    iostat > "${OUTPUT}${2}_${1}"
}

echo "Starting Base (large to small) test"

checkpoint 0 "small_LtS"

for i in $(seq 1 1 2)
do
    file_name="${DESKTOP}${i}_l"
    touch $file_name
    truncate -s 512M $file_name
done

checkpoint 1 "small_LtS"
checkpoint 2 "small_LtS"
checkpoint 3 "small_LtS"
checkpoint 4 "small_LtS"
checkpoint 5 "small_LtS"
checkpoint 6 "small_LtS"
checkpoint 7 "small_LtS"
checkpoint 8 "small_LtS"

for i in $(seq 1 1 4)
do
    file_name="${DESKTOP}${i}_m"
    touch $file_name
    truncate -s 1M $file_name
done

checkpoint 9  "small_LtS"
checkpoint 10 "small_LtS"
checkpoint 11 "small_LtS"
checkpoint 12 "small_LtS"
checkpoint 13 "small_LtS"
checkpoint 14 "small_LtS"
checkpoint 15 "small_LtS"
checkpoint 16 "small_LtS"

for i in $(seq 1 1 65536)
do
    file_name="${DESKTOP}${i}_s"
    touch $file_name
    truncate -s 8K $file_name
done

checkpoint 17 "small_LtS"
checkpoint 18 "small_LtS"
checkpoint 19 "small_LtS"
checkpoint 20 "small_LtS"
checkpoint 21 "small_LtS"
checkpoint 22 "small_LtS"
checkpoint 23 "small_LtS"
checkpoint 24 "small_LtS"

echo "Finished Tests rming"

sync

for i in $(seq 1 1 65536)
do
    file_name="${DESKTOP}${i}_s"
    rm $file_name
done

checkpoint 25 "small_LtS"
checkpoint 26 "small_LtS"
checkpoint 27 "small_LtS"
checkpoint 28 "small_LtS"
checkpoint 29 "small_LtS"
checkpoint 30 "small_LtS"
checkpoint 31 "small_LtS"
checkpoint 32 "small_LtS"

for i in $(seq 1 1 4)
do
    file_name="${DESKTOP}${i}_m"
    rm $file_name
done

checkpoint 33 "small_LtS"
checkpoint 34 "small_LtS"
checkpoint 35 "small_LtS"
checkpoint 36 "small_LtS"
checkpoint 37 "small_LtS"
checkpoint 38 "small_LtS"
checkpoint 39 "small_LtS"
checkpoint 40 "small_LtS"

for i in $(seq 1 1 2)
do
    file_name="${DESKTOP}${i}_l"
    rm $file_name
done

checkpoint 41 "small_LtS"
checkpoint 42 "small_LtS"
checkpoint 43 "small_LtS"
checkpoint 44 "small_LtS"
checkpoint 45 "small_LtS"
checkpoint 46 "small_LtS"
checkpoint 47 "small_LtS"
checkpoint 48 "small_LtS"
checkpoint 49 "small_LtS"

echo "Finished"