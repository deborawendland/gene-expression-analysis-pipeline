#!/usr/bin/env bash

echo "Running Trimmomatic"

# INPUT_PATH="./Data/data_SRP316381"
INPUT_PATH="./Analysis/Seqtk_2"
OUTPUT_PATH="./Analysis/Trimmomatic_2"
mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
   
    if [ -e ${OUTPUT_PATH}/${SAMPLE} ]; then
        echo "File exists: ${SAMPLE}"
    else
        java -jar /usr/share/java/trimmomatic-0.39.jar \
            SE \
            -threads 4 \
            ${INPUT_PATH}/${SAMPLE} \
            ${OUTPUT_PATH}/${SAMPLE} \
            MINLEN:25 \
            SLIDINGWINDOW:4:20 \
            -phred33 \
            ILLUMINACLIP:./Data/adapters/adapters:0:0:8
    fi
done