INPUT_PATH="./Analysis/"
OUTPUT_PATH="./Analysis/Transcriptogramer"

mkdir ${OUTPUT_PATH}

R < ./scripts_local/run_apps/run_transcriptogramer.R --no-save
