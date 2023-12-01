#!/bin/bash

iostat > "../Results/START"

sh base_LtS.sh
sleep 10
sync

sh base_StL.sh
sleep 10
sync

sh small_LtS.sh
sleep 10
sync

sh small_StL.sh
sleep 10
sync

sh medium_LtS.sh
sleep 10
sync

sh medium_StL.sh
sleep 10
sync

sh large_LtS.sh
sleep 10
sync

sh large_StL.sh
sleep 10
sync