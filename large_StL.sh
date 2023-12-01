#!/bin/bash

DESKTOP=../Desktop/
OUTPUT=../Results/

checkpoint (){
    sleep 5
    iostat > "${OUTPUT}${2}_${1}"
}

echo "Starting Large Heavy (small to large) test"

checkpoint 0 "large_StL"

for i in $(seq 1 1 32)
do
    file_name="${DESKTOP}${i}_s"
    touch $file_name
    truncate -s 8K $file_name
done

checkpoint 1 "large_StL"
checkpoint 2 "large_StL"
checkpoint 3 "large_StL"
checkpoint 4 "large_StL"
checkpoint 5 "large_StL"
checkpoint 6 "large_StL"
checkpoint 7 "large_StL"
checkpoint 8 "large_StL"

for i in $(seq 1 1 2)
do
    file_name="${DESKTOP}${i}_m"
    touch $file_name
    truncate -s 1M $file_name
done

checkpoint 9  "large_StL"
checkpoint 10 "large_StL"
checkpoint 11 "large_StL"
checkpoint 12 "large_StL"
checkpoint 13 "large_StL"
checkpoint 14 "large_StL"
checkpoint 15 "large_StL"
checkpoint 16 "large_StL"

for i in $(seq 1 1 1024)
do
    file_name="${DESKTOP}${i}_l"
    touch $file_name
    truncate -s 512M $file_name
done

checkpoint 17 "large_StL"
checkpoint 18 "large_StL"
checkpoint 19 "large_StL"
checkpoint 20 "large_StL"
checkpoint 21 "large_StL"
checkpoint 22 "large_StL"
checkpoint 23 "large_StL"
checkpoint 24 "large_StL"

echo "Finished Tests rming"
sync

for i in $(seq 1 1 32)
do
    file_name="${DESKTOP}${i}_s"
    rm $file_name
done

checkpoint 25 "large_StL"
checkpoint 26 "large_StL"
checkpoint 27 "large_StL"
checkpoint 28 "large_StL"
checkpoint 29 "large_StL"
checkpoint 30 "large_StL"
checkpoint 31 "large_StL"
checkpoint 32 "large_StL"

for i in $(seq 1 1 2)
do
    file_name="${DESKTOP}${i}_m"
    rm $file_name
done

checkpoint 33 "large_StL"
checkpoint 34 "large_StL"
checkpoint 35 "large_StL"
checkpoint 36 "large_StL"
checkpoint 37 "large_StL"
checkpoint 38 "large_StL"
checkpoint 39 "large_StL"
checkpoint 40 "large_StL"

for i in $(seq 1 1 1024)
do
    file_name="${DESKTOP}${i}_l"
    rm $file_name
done

checkpoint 41 "large_StL"
checkpoint 42 "large_StL"
checkpoint 43 "large_StL"
checkpoint 44 "large_StL"
checkpoint 45 "large_StL"
checkpoint 46 "large_StL"
checkpoint 47 "large_StL"
checkpoint 48 "large_StL"
checkpoint 49 "large_StL"

echo "Finished"