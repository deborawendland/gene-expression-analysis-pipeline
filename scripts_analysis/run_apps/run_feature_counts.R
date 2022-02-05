library(Rsubread)

# FeatureCounts

input.bam <- "./Analysis/Samtools"
ref.gtf.path <- "./Data/reference_genome_hg38/GCF_000001405.39_GRCh38.p13_genomic.gtf"

bam.files <- list.files(path = input.bam, pattern = ".bam$", full.names = TRUE)

fc <- featureCounts(bam.files, 
                    annot.ext=ref.gtf.path,
                    isGTFAnnotationFile=TRUE,
                    GTF.featureType="gene",
                    GTF.attrType="gene",
                    nthreads=4)

write.table(
  x=data.frame(fc$annotation[,c("GeneID")],
    fc$counts,
    stringsAsFactors=FALSE),
  file="./Analysis/FeatureCounts/counts_gtf.csv",
  quote=FALSE,
  sep=",",
  row.names=FALSE)

# - stats
fc$stat