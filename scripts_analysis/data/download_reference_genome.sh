#!/usr/bin/env bash

mkdir ./Data/reference_genome_hg38

echo "\nDownloading reference genomes"

wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/GCF_000001405.26_GRCh38/GO_TO_CURRENT_VERSION/GCF_000001405.39_GRCh38.p13_genomic.fna.gz -P ./Data/reference_genome_hg38
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/GCF_000001405.26_GRCh38/GO_TO_CURRENT_VERSION/GCF_000001405.39_GRCh38.p13_genomic.gtf.gz -P ./Data/reference_genome_hg38

echo "Unpacking .gz reference genomes"

gzip -d ./Data/reference_genome_hg38/GCF_000001405.39_GRCh38.p13_genomic.gtf.gz
gzip -d ./Data/reference_genome_hg38/GCF_000001405.39_GRCh38.p13_genomic.fna.gz