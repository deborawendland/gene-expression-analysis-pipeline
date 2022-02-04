#!/usr/bin/env bash

echo "Running Samtools"

INPUT_PATH="./Analysis/Tophat2/alignment"
OUTPUT_PATH="./Analysis/Samtools"
INPUT_FILE="accepted_hits.bam"

mkdir ${OUTPUT_PATH}

for dir in ${INPUT_PATH}/* ;
do
    SAMPLE=`basename ${dir}`
    NAME=${SAMPLE#*S}
    NAME=${NAME%%_*}
    
    if [ -e ${OUTPUT_PATH}/${NAME}.bam ]; then
        echo "File exists: ${NAME}.bam"
    else
        echo "Converting sample: ${SAMPLE}..."
        samtools view -bS  ${dir}/${INPUT_FILE} > ${OUTPUT_PATH}/${NAME}.bam
    fi
done