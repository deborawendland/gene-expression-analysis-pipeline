FROM deborawendland/gene-expression-pipeline:dev

WORKDIR /root

COPY sample/ Data/sample/
COPY download_reference_genome.sh Data/download_reference_genome.sh

RUN Data/download_reference_genome.sh

CMD ["bash"]