# FROM staphb/fastqc AS fastqc
FROM deborawendland/gene-expression-pipeline:data-sample

WORKDIR /root
COPY Analysis/ Analysis/
COPY Scripts/ Scripts/

# RUN fastqc SRR957824_500K_R1.fastq.gz SRR957824_500K_R2.fastq.gz
RUN sh Scripts/run_fastqc.sh

CMD ["bash"]