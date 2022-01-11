REFERENCE_GENOME_FILENAME="GCF_000001405.26_GRCh38_genomic.fna"
REF_PATH="~/gene-expression-analysis-pipeline/Data/reference_genome_hg38"
INPUT_PATH="~/gene-expression-analysis-pipeline/Data/sample"
REF_GTF="GCF_000001405.39_GRCh38.p13_genomic.gtf"

OUTPUT_PATH="~/gene-expression-analysis-pipeline/Analysis/STAR"
mkdir ${OUTPUT_PATH}
mkdir ${OUTPUT_PATH}/genome_dir


cd ~/gene-expression-analysis-pipeline/STAR-2.7.9a/bin/Linux_x86_64

# create indexes
./STAR --runThreadN 1 \
--runMode genomeGenerate \
--genomeDir ${OUTPUT_PATH}/genome_dir \
--genomeFastaFiles ${REF_PATH}/${REFERENCE_GENOME_FILENAME} \
--sjdbGTFfile ${REF_PATH}/${REF_GTF}


# align 
for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    #./STAR --runThreadN 2 \
     #   --genomeDir ${OUTPUT_PATH}/genome_dir \
      #  --genomeFastaFiles ${REF_PATH}/${REFERENCE_GENOME_FILENAME} \
       # --readFilesIn ${INPUT_PATH}/${SAMPLE} \
        #--outFileNamePrefix ${OUTPUT_PATH} \
        #--outSAMtype BAM SortedByCoordinate \
        #--outSAMunmapped Within \
        #--quantMode TranscriptomeSAM
done