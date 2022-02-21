if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install()

BiocManager::install("Rsubread")
BiocManager::install("DESeq2")
BiocManager::install("genefilter")
BiocManager::install("pathview")
BiocManager::install("transcriptogramer")

install.packages("gplots")
install.packages("RColorBrewer")