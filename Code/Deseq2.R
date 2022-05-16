install.packages("htmltools")
library(htmltools)
source("https://bioconductor.org/biocLite.R")
biocLite("DESeq2")

library( "DESeq2" )
library(ggplot2)

directory <- "/domus/h1/tiscargf/working_GA/results/BWA-Htseq/"

sampleFiles <- c('Counts_BH_1.txt', 'Counts_BH_2.txt','Counts_BH_3.txt','Counts_Serum_1.txt','Counts_Serum_2.txt','Counts_Serum_3.txt')
sampleCondition <- c('BH','BH', 'BH','Serum','Serum','Serum')
sampleTable <- data.frame(sampleName = sampleFiles,
                          fileName = sampleFiles,
                          condition = sampleCondition)
sampleTable$condition <- factor(sampleTable$condition)

dds_htseq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable,
                                        directory = directory,
                                        design = ~ condition)
dds <- DESeq(dds_htseq)
res <- results(dds,contrast=c('condition','BH','Serum'))
head(results(dds, tidy=TRUE))
summ <- summary(res)
res_p <- res[order(res$pvalue),]
head(res_p)
res_logmax <- res[order(res$log2FoldChange),]
head(res_logmax)
plotMA(res,ylim=c(-10,10))

