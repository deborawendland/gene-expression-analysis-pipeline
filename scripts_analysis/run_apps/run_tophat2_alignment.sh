#!/usr/bin/env bash

echo "Running Tophat - alignment"

TOPHAT_DIR="./Analysis/Tophat2"

rm -r ${TOPHAT_DIR}

INPUT_FASTQ_PATH="./Analysis/Trimmomatic"
DATABASE="GRCh38"
INPUT_PATH_GEN_DIR="./Analysis/Bowtie2/genome_dir"

TOPHAT_DIR_ALING="${TOPHAT_DIR}/alignment"
mkdir ${TOPHAT_DIR}
mkdir ${TOPHAT_DIR_ALING}

. ./data.config

# alignment
for file in $(ls $INPUT_FASTQ_PATH)
do
    SAMPLE=`basename $file`
    
    if [ -d ${TOPHAT_DIR_ALING}/${SAMPLE%.*} ]; then
        echo "Directory exists: ${SAMPLE%.*}"
    else
        echo "Alignment of sample: ${SAMPLE}..."
        # ./Older/tophat-2.1.1.Linux_x86_64/tophat2 \
        tophat2 \
            --output-dir ${TOPHAT_DIR_ALING}/${SAMPLE%.*} \
            --library-type ${tophat2_library_type} \
            --num-threads ${n_threads} \
            --max-multihits 1 \
            ${INPUT_PATH_GEN_DIR}/${DATABASE} \
            ${INPUT_FASTQ_PATH}/${SAMPLE} 
    fi
done