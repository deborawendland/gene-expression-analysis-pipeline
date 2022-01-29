#!/usr/bin/env bash

echo "Running Bowtie2 - indexing"

REFERENCE_GENOME_FILENAME="GCF_000001405.39_GRCh38.p13_genomic.fna"
REF_PATH="./Data/reference_genome_hg38"

OUTPUT_PATH="./Analysis/Bowtie2"
OUTPUT_GEN_DIR="${OUTPUT_PATH}/genome_dir"

mkdir ${OUTPUT_PATH}
mkdir ${OUTPUT_GEN_DIR}

# create indexes
./bowtie2-2.4.5-linux-x86_64/bowtie2-build \
    --threads 6 \
    ${REF_PATH}/${REFERENCE_GENOME_FILENAME} \
    ${OUTPUT_GEN_DIR}/${DATABASE} 