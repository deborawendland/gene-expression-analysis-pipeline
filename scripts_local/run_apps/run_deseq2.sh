#!/usr/bin/env bash

echo "Running DESeq2"

COUNTS_PATH="./Analysis/FeatureCounts"
DESEQ_PATH="./Analysis/Deseq2"

mkdir ${COUNTS_PATH}
mkdir ${DESEQ_PATH}

sudo apt-get update -y
sudo apt-get install libxml2-dev -y
sudo apt-get install r-cran-xml -y
sudo apt-get install libcurl4-openssl-dev -y

R < ./scripts_local/run_apps/run_deseq2.R --no-save
