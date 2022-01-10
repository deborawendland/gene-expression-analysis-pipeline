FASTQC_PATH="/root/Analysis/Fastqc"
TRIMMOMATIC_PATH="/root/Analysis/Trimmomatic"
OUTPUT_PATH="/root/Scripts/multiqc_report"
OUTPUT_FILENAME="multiqc_report.html"

multiqc ${FASTQC_PATH} ${TRIMMOMATIC_PATH}

mv ${OUTPUT_FILENAME} ${OUTPUT_PATH}/templates/${OUTPUT_FILENAME}
mv multiqc_data ${OUTPUT_PATH}/templates/multiqc_data

# FLASK_APP=${OUTPUT_PATH}/app.py flask run --host=0.0.0.0
# FLASK_APP=/root/Scripts/multiqc_report/app.py flask run --host=0.0.0.0