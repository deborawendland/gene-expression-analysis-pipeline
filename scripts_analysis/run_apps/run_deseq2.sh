#!/usr/bin/env bash

timestamp() {
  date +"%T"
}
echo "\nRunning DESeq2"
timestamp

COUNTS_PATH="./Analysis/FeatureCounts"
DESEQ_PATH="./Analysis/Deseq2"

mkdir ${DESEQ_PATH}

R < ./scripts_analysis/run_apps/run_deseq2.R --no-save
timestamp