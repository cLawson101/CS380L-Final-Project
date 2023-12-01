#!/bin/bash

DESKTOP=../Desktop/
OUTPUT=../Results/

checkpoint (){
    sleep 5
    iostat > "${OUTPUT}${2}_${1}"
}

echo "Starting Large Heavy (large to small) test"

checkpoint 0 "large_LtS"

for i in $(seq 1 1 1024)
do
    file_name="${DESKTOP}${i}_l"
    touch $file_name
    truncate -s 512M $file_name
done

checkpoint 1 "large_LtS"
checkpoint 2 "large_LtS"
checkpoint 3 "large_LtS"
checkpoint 4 "large_LtS"
checkpoint 5 "large_LtS"
checkpoint 6 "large_LtS"
checkpoint 7 "large_LtS"
checkpoint 8 "large_LtS"

for i in $(seq 1 1 2)
do
    file_name="${DESKTOP}${i}_m"
    touch $file_name
    truncate -s 1M $file_name
done

checkpoint 9  "large_LtS"
checkpoint 10 "large_LtS"
checkpoint 11 "large_LtS"
checkpoint 12 "large_LtS"
checkpoint 13 "large_LtS"
checkpoint 14 "large_LtS"
checkpoint 15 "large_LtS"
checkpoint 16 "large_LtS"

for i in $(seq 1 1 32)
do
    file_name="${DESKTOP}${i}_s"
    touch $file_name
    truncate -s 8K $file_name
done

checkpoint 17 "large_LtS"
checkpoint 18 "large_LtS"
checkpoint 19 "large_LtS"
checkpoint 20 "large_LtS"
checkpoint 21 "large_LtS"
checkpoint 22 "large_LtS"
checkpoint 23 "large_LtS"
checkpoint 24 "large_LtS"

echo "Finished Tests rming"
sync

for i in $(seq 1 1 32)
do
    file_name="${DESKTOP}${i}_s"
    rm $file_name
done

checkpoint 25 "large_LtS"
checkpoint 26 "large_LtS"
checkpoint 27 "large_LtS"
checkpoint 28 "large_LtS"
checkpoint 29 "large_LtS"
checkpoint 30 "large_LtS"
checkpoint 31 "large_LtS"
checkpoint 32 "large_LtS"

for i in $(seq 1 1 2)
do
    file_name="${DESKTOP}${i}_m"
    rm $file_name
done

checkpoint 33 "large_LtS"
checkpoint 34 "large_LtS"
checkpoint 35 "large_LtS"
checkpoint 36 "large_LtS"
checkpoint 37 "large_LtS"
checkpoint 38 "large_LtS"
checkpoint 39 "large_LtS"
checkpoint 40 "large_LtS"

for i in $(seq 1 1 1024)
do
    file_name="${DESKTOP}${i}_l"
    rm $file_name
done

checkpoint 41 "large_LtS"
checkpoint 42 "large_LtS"
checkpoint 43 "large_LtS"
checkpoint 44 "large_LtS"
checkpoint 45 "large_LtS"
checkpoint 46 "large_LtS"
checkpoint 47 "large_LtS"
checkpoint 48 "large_LtS"
checkpoint 49 "large_LtS"

echo "Finished"