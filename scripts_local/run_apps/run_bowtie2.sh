REFERENCE_GENOME_FILENAME="GCF_000001405.39_GRCh38.p13_genomic.fna"
REF_PATH="/home/debs/gene-expression-analysis-pipeline/Data/reference_genome_hg38"
INPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/Seqtk"
DATABASE="GRCh38"

OUTPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/Bowtie2"
OUTPUT_GEN_DIR="${OUTPUT_PATH}/genome_dir"
OUTPUT_ALIGN="${OUTPUT_PATH}/alignment"

mkdir ${OUTPUT_PATH}
mkdir ${OUTPUT_GEN_DIR}
mkdir ${OUTPUT_ALIGN}

# create indexes
cd /home/debs/gene-expression-analysis-pipeline/scripts_local/installations/bowtie2-2.4.5-linux-x86_64

./bowtie2-build \
    --threads 6 \
    ${REF_PATH}/${REFERENCE_GENOME_FILENAME} \
    ${OUTPUT_GEN_DIR}/${DATABASE} 

# inspect
./bowtie2-inspect -n ${OUTPUT_GEN_DIR}/${DATABASE} 

# align
cd /home/debs/gene-expression-analysis-pipeline/scripts_local/installations/bowtie2-2.4.5-linux-x86_64

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    echo "Alignment of sample: ${SAMPLE}..."
    ./bowtie2 \
        --local \
        --very-fast-local \
        -x ${OUTPUT_GEN_DIR}/${DATABASE} \
        -U ${INPUT_PATH}/${SAMPLE} \
        -S ${OUTPUT_ALIGN}/${SAMPLE%.*}.sam \
        --no-unal \
        --threads 6
done