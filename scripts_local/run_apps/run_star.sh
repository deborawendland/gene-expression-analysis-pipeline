REFERENCE_GENOME_FILENAME="GCF_000001405.26_GRCh38_genomic.fna"
REF_PATH="/home/debs/gene-expression-analysis-pipeline/Data/reference_genome_hg38"
INPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/Trimmomatic"
REF_GTF="GCF_000001405.39_GRCh38.p13_genomic.gtf"

OUTPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/STAR"
OUTPUT_GEN_DIR="${OUTPUT_PATH}/genome_dir"
OUTPUT_ALIGN="${OUTPUT_PATH}/alignment"

mkdir ${OUTPUT_PATH}
mkdir ${OUTPUT_GEN_DIR}
mkdir ${OUTPUT_ALIGN}

# create indexes
#cd /home/debs/gene-expression-analysis-pipeline/STAR-2.7.9a/bin/Linux_x86_64

#./STAR --runThreadN 6  \
    #--runMode genomeGenerate \
    #--genomeDir ${OUTPUT_GEN_DIR} \
    #--genomeFastaFiles ${REF_PATH}/${REFERENCE_GENOME_FILENAME} \
    #--sjdbGTFfile ${REF_PATH}/${REF_GTF} \
    #--sjdbOverhang 99 \
    #--genomeSAsparseD 1 \
    #--limitGenomeGenerateRAM 10000000000


# align 
cd /home/debs/gene-expression-analysis-pipeline/scripts_local/installations/bowtie2-2.4.5-linux-x86_64
for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    ./STAR --runThreadN 6 \
        --genomeDir ${OUTPUT_GEN_DIR} \
        --genomeFastaFiles ${REF_PATH}/${REFERENCE_GENOME_FILENAME} \
        --readFilesIn ${INPUT_PATH}/${SAMPLE} \
        --outFileNamePrefix ${OUTPUT_ALIGN}/ \
        --outSAMtype BAM SortedByCoordinate \
        --outSAMunmapped Within \
        --quantMode TranscriptomeSAM
done