# FROM staphb/fastqc AS fastqc
# FROM deborawendland/gene-expression-pipeline:data-sample
FROM deborawendland/gene-expression-pipeline:fastqc

WORKDIR /root
# COPY Analysis/ Analysis/
COPY Scripts/ Scripts/

# RUN sh Scripts/new_dependencies.sh

# RUN sh Scripts/run_fastqc.sh
# RUN sh Scripts/run_multiqc.sh

RUN mv multiqc_report.html /root/Scripts/multiqc_report/
 
CMD ["bash"]
ENTRYPOINT FLASK_APP=/root/Scripts/multiqc_report/show_multiqc_report.py flask run --host=0.0.0.0 