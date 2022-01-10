# FROM deborawendland/gene-expression-pipeline:data-sample
FROM deborawendland/gene-expression-pipeline:trim-hg38

WORKDIR /root
# COPY Analysis/ Analysis/
COPY Scripts/ Scripts/

# RUN Scripts/data/download_reference_genome.sh
# RUN sh Scripts/new_dependencies.sh

# RUN sh Scripts/run_apps/run_fastqc.sh
# RUN sh Scripts/run_apps/run_trimmomatic.sh
# RUN sh Scripts/run_apps/run_multiqc.sh

#RUN sh Scripts/run_apps/run_star.sh

CMD ["bash"]
# ENTRYPOINT FLASK_APP=/root/Scripts/multiqc_report/app.py flask run --host=0.0.0.0 