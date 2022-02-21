#!/usr/bin/env bash

echo "Running Pathview"

INPUT_PATH="./Analysis/"
OUTPUT_PATH="./Analysis/Pathview"

mkdir ${OUTPUT_PATH}

R < ./scripts_analysis/run_apps/run_pathview.R --no-save
