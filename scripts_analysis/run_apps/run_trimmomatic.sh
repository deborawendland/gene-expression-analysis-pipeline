#!/usr/bin/env bash

timestamp() {
  date +"%T"
}
echo "\nRunning Trimmomatic"
timestamp

INPUT_PATH="./Analysis/Seqtk"
OUTPUT_PATH="./Analysis/Trimmomatic"
ADAPTERS_PATH="./Data/adapters/adapters"
mkdir ${OUTPUT_PATH}

. ./data.config

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`

    echo "...File: ${SAMPLE}"
    timestamp

    if [ -e ${OUTPUT_PATH}/${SAMPLE} ]; then
        echo "... ...File exists: ${SAMPLE}"
    else
        java -jar /usr/share/java/trimmomatic-0.39.jar \
            SE \
            -threads ${n_threads} \
            ${INPUT_PATH}/${SAMPLE} \
            ${OUTPUT_PATH}/${SAMPLE} \
            MINLEN:25 \
            SLIDINGWINDOW:4:20 \
            -phred33 \
            ILLUMINACLIP:${ADAPTERS_PATH}:0:0:8
    fi
done