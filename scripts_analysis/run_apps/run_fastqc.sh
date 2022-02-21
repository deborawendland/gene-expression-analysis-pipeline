#!/usr/bin/env bash

echo "Running FastQC"

INPUT_PATH="./Data/samples"
OUTPUT_PATH="./Analysis/Fastqc"
mkdir ${OUTPUT_PATH}

. ./data.config

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    
    if [ -e ${OUTPUT_PATH}/${SAMPLE%.*}_fastqc.zip ]; then
        echo "File exists: ${SAMPLE%.*}_fastqc.zip"
    else
        fastqc -t ${n_threads} ${INPUT_PATH}/${SAMPLE} -o ${OUTPUT_PATH}
    fi
done
