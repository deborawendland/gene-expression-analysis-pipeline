#!/usr/bin/env bash

timestamp() {
  date +"%T"
}
echo "\nRunning Samtools"
timestamp

INPUT_PATH="./Analysis/Tophat2/alignment"
OUTPUT_PATH="./Analysis/Samtools"
INPUT_FILE="accepted_hits.bam"

mkdir ${OUTPUT_PATH}

for dir in ${INPUT_PATH}/* ;
do
    SAMPLE=`basename ${dir}`
    NAME=${SAMPLE%*}

    timestamp
    echo "...Converting sample: ${SAMPLE}"

    if [ -e ${OUTPUT_PATH}/${NAME}.bam ]; then
        echo "... ...File exists: ${NAME}.bam"
    else
        samtools view -bS  ${dir}/${INPUT_FILE} > ${OUTPUT_PATH}/${NAME}.bam
    fi
done
timestamp