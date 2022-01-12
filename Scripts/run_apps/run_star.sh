REFERENCE_GENOME_FILENAME="GCF_000001405.26_GRCh38_genomic.fna"
REF_PATH="/root/Data/reference_genome_hg38"
INPUT_PATH="/root/Analysis/Trimmomatic"
REF_GTF="GCF_000001405.39_GRCh38.p13_genomic.gtf"

OUTPUT_PATH="/root/Data/Analysis/STAR"
mkdir ${OUTPUT_PATH}
mkdir ${OUTPUT_PATH}/genome_dir


cd /root/STAR-2.7.9a/bin/Linux_x86_64

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