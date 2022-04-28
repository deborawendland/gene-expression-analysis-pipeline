# sudo apt-get install python3-pandas -y
# sudo pip install numpy

python3 ./scripts_analysis/data/filter_metadata.py

INPUT_PATH="./Data/samples"

for file in $(ls $INPUT_PATH) ;
do
    SAMPLE=`basename ${file}`
    NAME=${SAMPLE#*S}
    NAME=${NAME%%_*}

    mv ${INPUT_PATH}/${SAMPLE} ${INPUT_PATH}/${NAME}.fastq
done