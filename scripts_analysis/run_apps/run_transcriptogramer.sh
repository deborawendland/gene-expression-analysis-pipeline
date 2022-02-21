#!/usr/bin/env bash

echo "Running Transcriptogramer"

INPUT_PATH="./Analysis/FeatureCounts"
OUTPUT_PATH="./Analysis/Transcriptogramer"

mkdir ${OUTPUT_PATH}

# convert from txt to csv
# tr ' ' ',' <./Data/reference_proteins/9606.protein.links.v11.5.txt >./Data/reference_proteins/9606.protein.links.v11.5.csv 

R < ./scripts_analysis/run_apps/run_transcriptogramer.R --no-save
