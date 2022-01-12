#!/usr/bin/env bash

INPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Data/sample"
# cd $INPUT_PATH

OUTPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/Trimmomatic"
mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    java -jar /usr/share/java/trimmomatic-0.39.jar SE -threads 4 ${INPUT_PATH}/${SAMPLE} ${OUTPUT_PATH}/${SAMPLE} MINLEN:25 SLIDINGWINDOW:4:20
done