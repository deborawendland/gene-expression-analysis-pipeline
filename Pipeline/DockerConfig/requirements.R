# update.packages(ask = FALSE, checkBuilt = TRUE)

#install.packages("curl")
#install.packages("pkgconfig")
#install.packages("openssl")
#install.packages("credentials")
#install.packages("httr")
#install.packages("rcmdcheck")
#install.packages("gert")
#install.packages("gh")
#install.packages("usethis")
# install.packages("devtools")

#source("https://bioconductor.org/biocLite.R")
#biocLite()

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install()
BiocManager::install("Rsubread")
BiocManager::install("DESeq2")
BiocManager::install("transcriptogramer")

# BiocManager::install("GEOquery")