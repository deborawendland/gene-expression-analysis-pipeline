FROM deborawendland/gene-expression-pipeline:dev

WORKDIR /root

COPY sample/ Data/sample/
COPY download_reference_genome.sh Data/download_reference_genome.sh
# COPY reference_genome_hg38 Data/reference_genome_hg38

RUN Data/download_reference_genome.sh

CMD ["bash"]