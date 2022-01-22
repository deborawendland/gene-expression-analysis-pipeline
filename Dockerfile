# FROM deborawendland/gene-expression-pipeline:dev
# FROM deborawendland/gene-expression-pipeline:data-sample
FROM deborawendland/gene-expression-pipeline:analysis

WORKDIR /root
COPY Scripts/ Scripts/
COPY Pipeline/ Pipeline/

# RUN mkdir Analysis

# RUN sh Scripts/new_dependencies.sh
# RUN sh Scripts/run_apps/run_fastqc.sh
# RUN sh Scripts/run_apps/run_trimmomatic.sh
# RUN sh Scripts/run_apps/run_multiqc.sh

RUN sh Scripts/run_apps/run_star.sh

CMD ["bash"]
# ENTRYPOINT FLASK_APP=/root/Scripts/multiqc_report/app.py flask run --host=0.0.0.0 