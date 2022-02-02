#!/usr/bin/env bash

echo "Running SeqTK - subsampling"

INPUT_PATH="./Data/samples"
OUTPUT_PATH="./Analysis/Seqtk_2"

mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
   
    if [ -e ${OUTPUT_PATH}/${SAMPLE} ]; then
        echo "File exists: ${SAMPLE}"
    else
        echo "Subsamplig: ${SAMPLE}..."
        seqtk/seqtk sample \
            -s100 ${INPUT_PATH}/${SAMPLE} \
            1000000 > ${OUTPUT_PATH}/${SAMPLE}
    fi
done