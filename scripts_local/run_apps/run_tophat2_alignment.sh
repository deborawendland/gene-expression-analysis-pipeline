#!/usr/bin/env bash

echo "Running Tophat - alignment"

TOPHAT_DIR="./Analysis/Tophat2"

rm -r ${TOPHAT_DIR}

INPUT_FASTQ_PATH="./Analysis/Trimmomatic_2"
DATABASE="GRCh38"
INPUT_PATH_GEN_DIR="./Analysis/Bowtie2/genome_dir"

TOPHAT_DIR_ALING="${TOPHAT_DIR}/alignment"
rm -r ${TOPHAT_DIR}
mkdir ${TOPHAT_DIR}
mkdir ${TOPHAT_DIR_ALING}


# inspect
./bowtie2-2.4.5-linux-x86_64/bowtie2-inspect -n ${INPUT_PATH_GEN_DIR}/${DATABASE} 

# alignment
for file in $(ls $INPUT_FASTQ_PATH)
do
    SAMPLE=`basename $file`
    
    if [ -e ${TOPHAT_DIR_ALING}/${SAMPLE%.*}.sam ]; then
        echo "File exists: ${SAMPLE%.*}.sam"
    else
        echo "Alignment of sample: ${SAMPLE}..."
        ./Older/tophat-2.1.1.Linux_x86_64/tophat2 \
            --output-dir ${TOPHAT_DIR_ALING} \
            --max-multihits 1 \
            ${INPUT_PATH_GEN_DIR}/${DATABASE} \
            ${INPUT_FASTQ_PATH}/${SAMPLE} \
            --library-type fr-firststrand #library-type precisa confirmar pelo tipo de sequenciament
    fi
done