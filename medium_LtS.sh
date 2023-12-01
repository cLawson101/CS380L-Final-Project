#!/bin/bash

DESKTOP=../Desktop/
OUTPUT=../Results/

checkpoint (){
    sleep 5
    iostat > "${OUTPUT}${2}_${1}"
}

echo "Starting Medium (large to small) test"

checkpoint 0 "medium_LtS"

for i in $(seq 1 1 1)
do
    file_name="${DESKTOP}${i}_l"
    touch $file_name
    truncate -s 512M $file_name
done

checkpoint 1 "medium_LtS"
checkpoint 2 "medium_LtS"
checkpoint 3 "medium_LtS"
checkpoint 4 "medium_LtS"
checkpoint 5 "medium_LtS"
checkpoint 6 "medium_LtS"
checkpoint 7 "medium_LtS"
checkpoint 8 "medium_LtS"

for i in $(seq 1 1 4096)
do
    file_name="${DESKTOP}${i}_m"
    touch $file_name
    truncate -s 1M $file_name
done

checkpoint 9  "medium_LtS"
checkpoint 10 "medium_LtS"
checkpoint 11 "medium_LtS"
checkpoint 12 "medium_LtS"
checkpoint 13 "medium_LtS"
checkpoint 14 "medium_LtS"
checkpoint 15 "medium_LtS"
checkpoint 16 "medium_LtS"

for i in $(seq 1 1 128)
do
    file_name="${DESKTOP}${i}_s"
    touch $file_name
    truncate -s 8K $file_name
done

checkpoint 17 "medium_LtS"
checkpoint 18 "medium_LtS"
checkpoint 19 "medium_LtS"
checkpoint 20 "medium_LtS"
checkpoint 21 "medium_LtS"
checkpoint 22 "medium_LtS"
checkpoint 23 "medium_LtS"
checkpoint 24 "medium_LtS"

echo "Finished Tests rming"
sync

for i in $(seq 1 1 128)
do
    file_name="${DESKTOP}${i}_s"
    rm $file_name
done

checkpoint 25 "medium_LtS"
checkpoint 26 "medium_LtS"
checkpoint 27 "medium_LtS"
checkpoint 28 "medium_LtS"
checkpoint 29 "medium_LtS"
checkpoint 30 "medium_LtS"
checkpoint 31 "medium_LtS"
checkpoint 32 "medium_LtS"

for i in $(seq 1 1 4096)
do
    file_name="${DESKTOP}${i}_m"
    rm $file_name
done

checkpoint 33 "medium_LtS"
checkpoint 34 "medium_LtS"
checkpoint 35 "medium_LtS"
checkpoint 36 "medium_LtS"
checkpoint 37 "medium_LtS"
checkpoint 38 "medium_LtS"
checkpoint 39 "medium_LtS"
checkpoint 40 "medium_LtS"

for i in $(seq 1 1 1)
do
    file_name="${DESKTOP}${i}_l"
    rm $file_name
done

checkpoint 41 "medium_LtS"
checkpoint 42 "medium_LtS"
checkpoint 43 "medium_LtS"
checkpoint 44 "medium_LtS"
checkpoint 45 "medium_LtS"
checkpoint 46 "medium_LtS"
checkpoint 47 "medium_LtS"
checkpoint 48 "medium_LtS"
checkpoint 49 "medium_LtS"

echo "Finished"
