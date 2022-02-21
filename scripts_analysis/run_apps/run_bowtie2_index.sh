#!/usr/bin/env bash

echo "Running Bowtie2 - indexing"

REFERENCE_GENOME_FILENAME="GCF_000001405.39_GRCh38.p13_genomic.fna" 
REF_PATH="./Data/reference_genome_hg38"
DATABASE="GRCh38"

OUTPUT_PATH="./Analysis/Bowtie2"
OUTPUT_GEN_DIR="${OUTPUT_PATH}/genome_dir"

mkdir ${OUTPUT_PATH}
mkdir ${OUTPUT_GEN_DIR}

. ./data.config

# create indexes    
if [ -e ${OUTPUT_GEN_DIR}/${DATABASE}* ]; then
    echo "Database exists: ${DATABASE}"
else
    bowtie2-build \
        --threads ${n_threads} \
        ${REF_PATH}/${REFERENCE_GENOME_FILENAME} \
        ${OUTPUT_GEN_DIR}/${DATABASE} 
fi