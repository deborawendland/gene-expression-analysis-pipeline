library("DESeq2")
library(Rsubread)

library(genefilter)
library(gplots)
library(RColorBrewer)

require(dplyr)


# DESEQ2
output.path <- "./Analysis/DESeq2"

metadata <- read.csv("./Data/samples/metadata/metadata.csv", 
                row.names=1)
fc <- read.csv("./Analysis/FeatureCounts/counts-gtf.csv", 
                row.names=1)

# metadata <- metadata[,c("status")]

colnames(fc) <- sub(".bam", "", colnames(fc))
colnames(fc) <- sub("X", "", colnames(fc))

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

# res <- results(dds, contrast=c("Asymptomatic","Symptomatic")) 
# write.csv(as.data.frame(res), file="DE.csv") 

head(res) #let's look at the results table
summary(res) #summary of results

res <- res[order(res$padj),]
head(res)

write.table(
  x=data.frame(res,
    stringsAsFactors=FALSE),
  file="./Analysis/DESeq2/results-gtf.csv",
  quote=FALSE,
  sep=",",
  row.names=FALSE)

library(DESeq2)

#rlog transformation
rld <- rlog(dds, blind = F) 
head(assay(rld), ) 
write.csv(assay(rld), file="./Analysis/DESeq2/rlog-values.csv") 

#heatmaps
#heatmap.2(assay(rld), scale="row",trace="none", dendrogram="both", col = heat.colors(n = 75), margins = c(8,8)) #funcao para heatmap completo

topVarGenes <- head( order( rowVars( assay(rld) ), decreasing=TRUE ), 50 ) #pular funcao se quiser heatmap de todos os genes, alterar o 50 para o numero de genes no ranking
topVarGenes
pdf("./Analysis/DESeq2/heatmap-top-var-genes.pdf", height=10, width=10)
heatmap.2( assay(rld)[ topVarGenes, ], scale="row",trace="none", dendrogram="both",col = redgreen(75)) #pular funcao se quiser heatmap de todos os genes
dev.off()

##distancia entre amostras
sampleDists <- as.matrix(dist(t(assay(rld))))
head(sampleDists)
write.csv(sampleDists, file="./Analysis/DESeq2/sample-distances.csv") 

pdf("./Analysis/DESeq2/heatmap-sample-distances.pdf", height=10, width=10)
heatmap.2(as.matrix(sampleDists), scale="row",trace="none", dendrogram="both", col = heat.colors(n = 75), margins = c(8,8)) #funcao para heatmap completo
dev.off()
