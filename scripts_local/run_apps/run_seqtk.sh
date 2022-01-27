#!/usr/bin/env bash

INPUT_PATH="./Analysis/Trimmomatic"
OUTPUT_PATH="./Analysis/Seqtk"

mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    echo "Subsamplig: ${SAMPLE}..."
    seqtk/seqtk sample \
    -s100 ${INPUT_PATH}/${SAMPLE} \
    10000 > ${OUTPUT_PATH}/${SAMPLE}
done