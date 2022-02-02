#!/usr/bin/env bash

echo "Running Samtools"

INPUT_PATH="./Analysis/Tophat2/alignment"
OUTPUT_PATH="./Analysis/Samtools_2"

mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    NAME=${SAMPLE#*S}
    NAME=${NAME%%_*}
    
    if [ -e ${OUTPUT_PATH}/${NAME}.bam ]; then
        echo "File exists: ${NAME}.bam"
    else
        echo "Converting sample: ${SAMPLE}..."
        samtools view -bS  ${INPUT_PATH}/${SAMPLE} > ${OUTPUT_PATH}/${NAME}.bam
    fi
done