#!/usr/bin/env bash

RUN_PATH="/root/Data/sample"
cd $RUN_PATH

OUTPUT_PATH="/root/Analysis/Fastqc"
mkdir ${OUTPUT_PATH}

for file in $(ls $RUN_PATH)
do
    SAMPLE=`basename $file`
    fastqc -t 5 ${SAMPLE} -o ${OUTPUT_PATH}
done
