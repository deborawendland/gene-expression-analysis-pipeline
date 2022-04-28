#!/usr/bin/env bash

timestamp() {
  date +"%T"
}
echo "\nRunning SeqTK - subsampling"
timestamp

INPUT_PATH="./Data/samples"
OUTPUT_PATH="./Analysis/Seqtk"

mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    echo "...Subsamplig: ${SAMPLE}"
    timestamp
   
    if [ -e ${OUTPUT_PATH}/${SAMPLE} ]; then
        echo "... ...File exists: ${SAMPLE}"
    else
        # seqtk/seqtk sample \
        seqtk sample \
            -s100 ${INPUT_PATH}/${SAMPLE} \
            1000000 > ${OUTPUT_PATH}/${SAMPLE}
    fi
done
timestamp