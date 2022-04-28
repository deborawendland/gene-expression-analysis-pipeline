#!/usr/bin/env bash

timestamp() {
  date +"%T"
}
echo "\nRunning FeatureCounts"
timestamp

OUTPUT_PATH="./Analysis/FeatureCounts"
mkdir ${OUTPUT_PATH}

R < ./scripts_analysis/run_apps/run_feature_counts.R --no-save
timestamp