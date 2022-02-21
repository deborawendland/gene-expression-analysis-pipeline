#!/usr/bin/env bash

echo "Running FeatureCounts"

OUTPUT_PATH="./Analysis/FeatureCounts"
mkdir ${OUTPUT_PATH}

R < ./scripts_analysis/run_apps/run_feature_counts.R --no-save