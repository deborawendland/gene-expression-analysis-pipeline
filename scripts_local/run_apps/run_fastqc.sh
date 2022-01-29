#!/usr/bin/env bash

echo "Running FastQC"

INPUT_PATH="./Data/data_SRP316381"
# INPUT_PATH="./Data/sample"
OUTPUT_PATH="./Analysis/Fastqc"
mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    
    if [ -e ${OUTPUT_PATH}/${SAMPLE%.*}_fastqc.zip ]; then
        echo "File exists"
    else
        fastqc -t 6 ${INPUT_PATH}/${SAMPLE} -o ${OUTPUT_PATH}
    fi
done
