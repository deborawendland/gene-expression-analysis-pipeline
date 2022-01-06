#!/bin/bash

mkdir Data/Dataset_GSE189086

# imported files from https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE171703
# extract tar file
tar -C Data/Dataset_GSE189086/ -xvf Data/GSE189086_RAW.tar 

# create folders to separate different files
mkdir Data/Dataset/barcodes_tsv
mkdir Data/Dataset/consensus_fasta
mkdir Data/Dataset/feature_barcode_csv
mkdir Data/Dataset/features_tsv
mkdir Data/Dataset/filtered_contig_annotations_csv
mkdir Data/Dataset/matrix_mtx

# file extensions vars
BARCODES="barcodes.tsv"
CONSENSUS="consensus.fasta"
FEATURE_BARCODES="feature_barcode.csv"
FEATURES="features.tsv"
FILTERED="filtered_contig_annotations.csv"
MATRIX="matrix.mtx"

# for each file in data set is sorted into respective folder
for filename in Data/Dataset/*
do
    if [[ $filename == *$BARCODES* ]]; then
        mv $filename Data/Dataset/barcodes_tsv
    elif [[ $filename == *$CONSENSUS* ]]; then
        mv $filename Data/Dataset/consensus_fasta
    elif [[ $filename == *$FEATURE_BARCODES* ]]; then
        mv $filename Data/Dataset/feature_barcode_csv
    elif [[ $filename == *$FEATURES* ]]; then
        mv $filename Data/Dataset/features_tsv
    elif [[ $filename == *$FILTERED* ]]; then
        mv $filename Data/Dataset/filtered_contig_annotations_csv
    elif [[ $filename == *$MATRIX* ]]; then
        mv $filename Data/Dataset/matrix_mtx
    fi
done;


