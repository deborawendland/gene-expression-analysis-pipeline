#!/usr/bin/env bash

echo "Running SeqTK - subsampling"

INPUT_PATH="./Analysis/Trimmomatic"
OUTPUT_PATH="./Analysis/Seqtk"

mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
   
    if [ -e ${OUTPUT_PATH}/${SAMPLE} ]; then
        echo "File exists"
    else
        echo "Subsamplig: ${SAMPLE}..."
        seqtk/seqtk sample \
            -s100 ${INPUT_PATH}/${SAMPLE} \
            10000 > ${OUTPUT_PATH}/${SAMPLE}
    fi
done