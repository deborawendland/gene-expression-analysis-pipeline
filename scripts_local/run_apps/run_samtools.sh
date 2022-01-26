INPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/Bowtie2/alignment"
OUTPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/Samtools"

mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    echo "Alignment of sample: ${SAMPLE}..."
    samtools view -bS  ${INPUT_PATH}/${SAMPLE} > ${OUTPUT_PATH}/${SAMPLE%.*}.bam
done