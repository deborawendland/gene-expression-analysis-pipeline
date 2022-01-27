OUTPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/FeatureCounts"

mkdir ${OUTPUT_PATH}

R < ./scripts_local/run_apps/run_feature_counts.R --no-save