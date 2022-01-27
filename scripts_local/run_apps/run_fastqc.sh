#!/usr/bin/env bash

INPUT_PATH="./Data/sample"
OUTPUT_PATH="./Analysis/Fastqc"
mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    fastqc -t 5 ${SAMPLE} -o ${OUTPUT_PATH}
done
