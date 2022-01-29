#install.packages("htmltools")
#library(htmltools)
#source("https://bioconductor.org/biocLite.R")
#biocLite("DESeq2")

#if (!requireNamespace("BiocManager", quietly = TRUE))
#install.packages("BiocManager")
#BiocManager::install("Rsubread")
#BiocManager::install("DESeq2")

library("DESeq2")
library(Rsubread)

require(dplyr)

# DESEQ2
output.path <- "./Analysis/DESeq2"

metadata <- read.csv("./Data/data_SRP316381/SraRunTable.csv", 
                row.names=1)
fc <- read.csv("./Analysis/FeatureCounts/counts.csv", 
                row.names=1)

metadata <- metadata[,c("Age","gender","status")]
colnames(fc) <- sub(".bam", "", colnames(fc))
colnames(fc) <- sub("X", "", colnames(fc))

# colnames(fc)
# rownames(metadata)

rownames(metadata) <- seq.int(2, nrow(metadata)+1)

# colnames(fc)
# rownames(metadata)

fc <- fc[,rownames(metadata)]
all(rownames(metadata) %in% colnames(fc))

dds <- DESeqDataSetFromMatrix(countData=fc, 
                              colData=metadata, 
                              design=~status)
dds

dds <- DESeq(dds)
dds 

resultsNames(dds) # lists the coefficients
res <- results(dds, tidy=TRUE)

head(res) #let's look at the results table
summary(res) #summary of results

res <- res[order(res$padj),]
head(res)

write.table(
  x=data.frame(res,
    stringsAsFactors=FALSE),
  file="./Analysis/DESeq2/results.csv",
  quote=FALSE,
  sep=",",
  row.names=FALSE)