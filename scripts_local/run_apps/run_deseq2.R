#install.packages("htmltools")
#library(htmltools)
#source("https://bioconductor.org/biocLite.R")
#biocLite("DESeq2")

if (!requireNamespace("BiocManager", quietly = TRUE))
install.packages("BiocManager")
BiocManager::install("Rsubread")
BiocManager::install("DESeq2")

library("DESeq2")
library(Rsubread)

# DESEQ2
output.path <- "./Analysis/DESeq2"

metadata <- read.csv("./Data/sample/sample_metadata_index.csv", 
                row.names=1)
fc <- read.csv("./Analysis/FeatureCounts/counts.csv", 
                row.names=1)

metadata <- metadata[,c("Age","gender","status")]
colnames(fc) <- sub(".bam", "", colnames(fc))
colnames(fc) <- sub("X", "", colnames(fc))

fc <- fc[,rownames(metadata)]
all(rownames(metadata) %in% colnames(fc))

dds <- DESeqDataSetFromMatrix(countData=fc, 
                              colData=metadata, 
                              design=~status)
dds

dds <- DESeq(dds)
dds 

resultsNames(dds) # lists the coefficients
