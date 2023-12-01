#!/bin/bash

cd ../git_test

OUTPUT="../../Git_Results/"

checkpoint (){
    sleep 5
    iostat > "${OUTPUT}${1}"
}

git clone https://github.com/pytorch/pytorch.git
cd pytorch

checkpoint 0

checkpoint 1
checkpoint 2
checkpoint 3
checkpoint 4
checkpoint 5
checkpoint 6
checkpoint 7
checkpoint 8
checkpoint 9


git checkout -b 1x1
sync

checkpoint 21
checkpoint 22
checkpoint 23
checkpoint 24
checkpoint 25
checkpoint 26
checkpoint 27
checkpoint 28
checkpoint 29

git checkout -b 1.6_doc_references
sync

checkpoint 31
checkpoint 32
checkpoint 33
checkpoint 34
checkpoint 35
checkpoint 36
checkpoint 37
checkpoint 38
checkpoint 39

git checkout -b new_branch
sync

checkpoint 41
checkpoint 42
checkpoint 43
checkpoint 44
checkpoint 45
checkpoint 46
checkpoint 47
checkpoint 48
checkpoint 49