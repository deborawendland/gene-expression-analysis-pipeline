#!/usr/bin/env bash

echo "Running Samtools"

INPUT_PATH="./Analysis/Bowtie2/alignment"
OUTPUT_PATH="./Analysis/Samtools"

mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    NAME=${SAMPLE#*S}
    NAME=${NAME%%_*}
    
    if [ -e ${OUTPUT_PATH}/${NAME}.bam ]; then
        echo "File exists"
    else
        echo "Converting sample: ${SAMPLE}..."
        samtools view -bS  ${INPUT_PATH}/${SAMPLE} > ${OUTPUT_PATH}/${NAME}.bam
    fi
done