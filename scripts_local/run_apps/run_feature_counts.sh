INPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/Samtools"
OUTPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/FeatureCounts"
REF_GTF="GCF_000001405.39_GRCh38.p13_genomic.gtf"

mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    echo "Counting features of sample: ${SAMPLE}..."
    featureCounts \
    -T 4 \
    --verbose \
    -a ${REF_GTF} \
    -o ${SAMPLE%.*}_counts.txt \
    ${SAMPLE}
done