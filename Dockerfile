# FROM deborawendland/gene-expression-pipeline:data-sample
FROM deborawendland/gene-expression-pipeline:trimmomatic

WORKDIR /root
#COPY Analysis/ Analysis/
COPY Scripts/ Scripts/

#RUN sh Scripts/new_dependencies.sh

#RUN sh Scripts/run_apps/run_fastqc.sh
#RUN sh Scripts/run_apps/run_trimmomatic.sh
#RUN sh Scripts/run_apps/run_multiqc.sh

CMD ["bash"]
# FLASK_APP=/root/Scripts/multiqc_report/app.py flask run --host=0.0.0.0 