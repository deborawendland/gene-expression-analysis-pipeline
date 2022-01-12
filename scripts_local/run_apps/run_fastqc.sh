#!/usr/bin/env bash

INPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Data/sample"
cd $INPUT_PATH

OUTPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/Fastqc"
mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    fastqc -t 5 ${SAMPLE} -o ${OUTPUT_PATH}
done
