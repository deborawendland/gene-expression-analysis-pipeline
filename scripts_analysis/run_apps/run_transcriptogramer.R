library(transcriptogramer)

association <- read.csv("./Data/reference_proteins/9606.protein.links.v11.5.csv")

t <- transcriptogramPreprocess(association = association, ordering = Hs900)
t

# criar dicionario ou adicionar
# arquivo csv com nome do gene e o nome relativo à proteina extrair do gff


# transcriptograma
#t <- transcriptogramStep1(object = t, expression = GSE9988,
 #                         dictionary = GPL570, nCores = 1)
#t2 <- t

#t <- transcriptogramStep2(object = t, nCores = 1)

#radius(object = t2) <- 50
#t2 <- transcriptogramStep2(object = t2, nCores = 1)

# GO analysis

## trend = FALSE for microarray data or voom log2-counts-per-million
## the default value for trend is FALSE
#levels <- c(rep(FALSE, 3), rep(TRUE, 3))
#t <- differentiallyExpressed(object = t, levels = levels, pValue = 0.01,
 #                            trend = FALSE, title = "radius 80")


## using the species argument to translate ENSEMBL Peptide IDs to Symbols
## Internet connection is required for this command
#t <- differentiallyExpressed(object = t, levels = levels, pValue = 0.01,
 #                            species = "Homo sapiens", title = "radius 80")
