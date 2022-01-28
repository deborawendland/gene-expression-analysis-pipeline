#!/usr/bin/env bash

INPUT_PATH="./Data/data_SRP316381"
# INPUT_PATH="./Data/sample"
OUTPUT_PATH="./Analysis/Fastqc"
mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    fastqc -t 6 ${INPUT_PATH}/${SAMPLE} -o ${OUTPUT_PATH}
done
