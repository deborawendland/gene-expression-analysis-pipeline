INPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/Bowtie2/alignment"
OUTPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/Samtools"

mkdir ${OUTPUT_PATH}

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    echo "Converting sample: ${SAMPLE}..."
    NAME=${SAMPLE#*S}
    NAME=${NAME%%_*}
    samtools view -bS  ${INPUT_PATH}/${SAMPLE} > ${OUTPUT_PATH}/${NAME#_*%_*}.bam
done