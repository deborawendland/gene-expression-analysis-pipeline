FASTQC_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/Fastqc"
TRIMMOMATIC_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/Trimmomatic"
OUTPUT_PATH="/home/debs/gene-expression-analysis-pipeline/scripts_local/multiqc_report"
OUTPUT_FILENAME="multiqc_report.html"

multiqc ${FASTQC_PATH} ${TRIMMOMATIC_PATH}

mv ${OUTPUT_FILENAME} ${OUTPUT_PATH}/templates/${OUTPUT_FILENAME}
mv multiqc_data ${OUTPUT_PATH}/templates/multiqc_data

# FLASK_APP=${OUTPUT_PATH}/app.py flask run --host=0.0.0.0
# FLASK_APP=/home/debs/gene-expression-analysis-pipeline/Scripts/multiqc_report/app.py flask run --host=0.0.0.0