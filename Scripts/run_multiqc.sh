INPUT_PATH="/root/Analysis/Fastqc"
OUTPUT_PATH="/root/Scripts/multiqc_report"
OUTPUT_FILENAME="multiqc_report.html"

multiqc ${INPUT_PATH}

mv ${OUTPUT_FILENAME} ${OUTPUT_PATH}/templates/${OUTPUT_FILENAME}
RUN mv multiqc_data ${OUTPUT_PATH}/templates/multiqc_data

# FLASK_APP=${OUTPUT_PATH}/app.py flask run --host=0.0.0.0 