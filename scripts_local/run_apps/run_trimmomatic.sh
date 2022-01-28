#!/usr/bin/env bash

INPUT_PATH="./Data/data_SRP316381"
# INPUT_PATH="./Data/sample"
OUTPUT_PATH="./Analysis/Trimmomatic"
mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    java -jar /usr/share/java/trimmomatic-0.39.jar SE -threads 6 ${INPUT_PATH}/${SAMPLE} ${OUTPUT_PATH}/${SAMPLE} MINLEN:25 SLIDINGWINDOW:4:20
done
