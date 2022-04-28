#!/usr/bin/env bash

timestamp() {
  date +"%T"
}
echo "\nRunning Bowtie2 - indexing"
timestamp

REFERENCE_GENOME_FILENAME="GCF_000001405.39_GRCh38.p13_genomic.fna" 
REF_PATH="./Data/reference_genome_hg38"
DATABASE="GRCh38"

OUTPUT_PATH="./Analysis/Bowtie2"
OUTPUT_GEN_DIR="${OUTPUT_PATH}/genome_dir"

mkdir ${OUTPUT_PATH}
mkdir ${OUTPUT_GEN_DIR}

N_THREADS=$1

# create indexes    
if [ -e ${OUTPUT_GEN_DIR}/${DATABASE}* ]; then
    echo "Database exists: ${DATABASE}"
else
    bowtie2-build \
        --threads ${N_THREADS} \
        ${REF_PATH}/${REFERENCE_GENOME_FILENAME} \
        ${OUTPUT_GEN_DIR}/${DATABASE} 
fi
timestamp