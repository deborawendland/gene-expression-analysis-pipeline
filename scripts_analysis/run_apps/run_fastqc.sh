#!/usr/bin/env bash

timestamp() {
  date +"%T"
}

echo "\nRunning FastQC"
timestamp

INPUT_PATH="./Data/samples"
OUTPUT_PATH="./Analysis/Fastqc"
mkdir ${OUTPUT_PATH}

N_THREADS=$1

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`

    echo "...File: ${SAMPLE}"
    timestamp

    if [ -e ${OUTPUT_PATH}/${SAMPLE%.*}_fastqc.zip ]; then
        echo "... ...File exists: ${SAMPLE%.*}_fastqc.zip"
    else
        fastqc -t ${N_THREADS} ${INPUT_PATH}/${SAMPLE} -o ${OUTPUT_PATH}
    fi
done
timestamp