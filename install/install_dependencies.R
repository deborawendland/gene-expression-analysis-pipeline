update.packages(ask = FALSE, checkBuilt = TRUE)

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install(version = '3.14', ask = FALSE)

install.packages("gplots")
install.packages("RColorBrewer")

BiocManager::install("Rsubread")
BiocManager::install("DESeq2")
BiocManager::install("genefilter")
BiocManager::install("pathview")
BiocManager::install("transcriptogramer")