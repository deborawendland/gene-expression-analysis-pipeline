FROM deborawendland/gene-expression-pipeline:dev

WORKDIR /root
COPY sample/ Data/sample/
COPY reference_genome_hg38 Data/reference_genome_hg38

WORKDIR /root/Data/reference_genome_hg38
RUN tar -xvf genome_assemblies_genome_fasta.tar

CMD ["bash"]