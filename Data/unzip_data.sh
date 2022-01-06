#!/usr/bin/env bash

RUN_PATH="/root/Data/data_SRP316381"
cd $RUN_PATH

for file in $(ls $RUN_PATH)
do
    gunzip -S ".gz.1" `basename $file`
    rm `basename $file`
done
