INPUT_PATH="./Analysis/"
OUTPUT_PATH="./Analysis/Pathview"

mkdir ${OUTPUT_PATH}

R < ./scripts_local/run_apps/run_pathview.R --no-save
