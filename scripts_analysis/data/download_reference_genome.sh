#!/usr/bin/env bash

wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/GCF_000001405.26_GRCh38/GO_TO_CURRENT_VERSION/GCF_000001405.39_GRCh38.p13_genomic.fna.gz -P ./Data/reference_genome_hg38
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/GCF_000001405.26_GRCh38/GO_TO_CURRENT_VERSION/GCF_000001405.39_GRCh38.p13_genomic.gff.gz -P ./Data/reference_genome_hg38
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/GCF_000001405.26_GRCh38/GO_TO_CURRENT_VERSION/GCF_000001405.39_GRCh38.p13_genomic.gtf.gz -P ./Data/reference_genome_hg38
