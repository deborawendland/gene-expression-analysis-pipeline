#!/usr/bin/env bash

echo "Running Trimmomatic"

INPUT_PATH="./Analysis/Seqtk"
OUTPUT_PATH="./Analysis/Trimmomatic"
mkdir ${OUTPUT_PATH}

. ./data.config

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
   
    if [ -e ${OUTPUT_PATH}/${SAMPLE} ]; then
        echo "File exists: ${SAMPLE}"
    else
        java -jar /usr/share/java/trimmomatic-0.39.jar \
            SE \
            -threads ${n_threads} \
            ${INPUT_PATH}/${SAMPLE} \
            ${OUTPUT_PATH}/${SAMPLE} \
            MINLEN:25 \
            SLIDINGWINDOW:4:20 \
            -phred33 \
            ILLUMINACLIP:${adapters_file_path}:0:0:8
    fi
done