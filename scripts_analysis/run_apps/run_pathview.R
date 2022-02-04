source("http://bioconductor.org/biocLite.R")
biocLite("pathview")

library(pathview)
library("AnnotationDbi")
library("org.Hs.eg.db")
columns(org.Hs.eg.db)

