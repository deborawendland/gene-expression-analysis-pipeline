#!/usr/bin/env bash

echo "Running Bowtie2 - alignment"

INPUT_PATH="./Analysis/Seqtk"
DATABASE="GRCh38"
OUTPUT_PATH="./Analysis/Bowtie2"

OUTPUT_GEN_DIR="${OUTPUT_PATH}/genome_dir"
OUTPUT_ALIGN="${OUTPUT_PATH}/alignment"
mkdir ${OUTPUT_ALIGN}

# inspect
./bowtie2-2.4.5-linux-x86_64/bowtie2-inspect -n ${OUTPUT_GEN_DIR}/${DATABASE} 

# align
for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    
    if [ -e ${OUTPUT_ALIGN}/${SAMPLE%.*}.sam ]; then
        echo "File exists: ${SAMPLE%.*}.sam"
    else
        echo "Alignment of sample: ${SAMPLE}..."
        ./bowtie2-2.4.5-linux-x86_64/bowtie2 \
            --local \
            --very-fast-local \
            -x ${OUTPUT_GEN_DIR}/${DATABASE} \
            -U ${INPUT_PATH}/${SAMPLE} \
            -S ${OUTPUT_ALIGN}/${SAMPLE%.*}.sam \
            --no-unal \
            --threads 6
    fi
done