INPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/Samtools"
OUTPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/FeatureCounts"
REF_GTF="/home/debs/gene-expression-analysis-pipeline/Data/reference_genome_hg38/GCF_000001405.39_GRCh38.p13_genomic.gtf"

mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    echo "Counting features of sample: ${SAMPLE}..."
    featureCounts \
    -T 6 \
    --verbose \
    -a ${REF_GTF} \
    -o ${OUTPUT_PATH}/${SAMPLE%.*}_counts.txt \
    ${INPUT_PATH}/${SAMPLE}
done