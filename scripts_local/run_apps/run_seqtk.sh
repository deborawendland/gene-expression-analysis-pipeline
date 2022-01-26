INPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/Trimmomatic"
OUTPUT_PATH="/home/debs/gene-expression-analysis-pipeline/Analysis/Seqtk"

mkdir ${OUTPUT_PATH}

cd seqtk/

for file in $(ls $INPUT_PATH)
do
    SAMPLE=`basename $file`
    echo "Subsamplig: ${SAMPLE}..."
    ./seqtk sample \
    -s100 ${INPUT_PATH}/${SAMPLE} \
    10000 > ${OUTPUT_PATH}/${SAMPLE}
done