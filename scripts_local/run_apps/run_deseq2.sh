#!/usr/bin/env bash

echo "Running DESeq2"

COUNTS_PATH="./Analysis/FeatureCounts"
DESEQ_PATH="./Analysis/Deseq2"

mkdir ${COUNTS_PATH}
mkdir ${DESEQ_PATH}

# Rename metadata
mv ./Data/data_SRP316381/SraRunTable.txt ./Data/data_SRP316381/SraRunTable.csv

R < ./scripts_local/run_apps/run_deseq2.R --no-save
