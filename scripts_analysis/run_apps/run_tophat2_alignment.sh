#!/usr/bin/env bash

timestamp() {
  date +"%T"
}
echo "\nRunning Tophat - alignment"
timestamp

TOPHAT_DIR="./Analysis/Tophat2"

rm -r ${TOPHAT_DIR}

INPUT_FASTQ_PATH="./Analysis/Trimmomatic"
DATABASE="GRCh38"
INPUT_PATH_GEN_DIR="./Analysis/Bowtie2/genome_dir"

TOPHAT_DIR_ALING="${TOPHAT_DIR}/alignment"
mkdir ${TOPHAT_DIR}
mkdir ${TOPHAT_DIR_ALING}

N_THREADS=$1
tophat2_library_type=$2

# alignment
for file in $(ls $INPUT_FASTQ_PATH)
do
    SAMPLE=`basename $file`
    echo "...Alignment of sample: ${SAMPLE}..."
    timestamp
    
    if [ -d ${TOPHAT_DIR_ALING}/${SAMPLE%.*} ]; then
        echo "... ...Directory exists: ${SAMPLE%.*}"
    else   
        tophat2 \
            --output-dir ${TOPHAT_DIR_ALING}/${SAMPLE%.*} \
            --library-type ${tophat2_library_type} \
            --num-threads ${N_THREADS} \
            --max-multihits 1 \
            ${INPUT_PATH_GEN_DIR}/${DATABASE} \
            ${INPUT_FASTQ_PATH}/${SAMPLE} 
    fi
done
timestamp