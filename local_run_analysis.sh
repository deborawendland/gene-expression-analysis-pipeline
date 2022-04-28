N_THREADS=8
TOPHAT_LIBRARY_TYPE=fr-firststrand

echo "\nChecking sample files..."
check_samples=`ls -1 ./Data/samples/*.fastq 2>/dev/null | wc -l`
if [ $check_samples == 0 ]; then 
    echo "... No .fastq files in ./Data/samples/, please add the files to continue with the analysis"  
    exit 1
else
    echo "... OK"
fi

echo "\nChecking metadata file..."
metadata_file="./Data/samples/metadata/metadata.csv"
if [ -f "$metadata_file" ]; then
        echo "... OK"
else
    echo "... No metadata.csv file found in ./Data/samples/metadata/, please add the file to continue with the analysis"  
    exit 1
fi

echo "\nChecking adapters file..."
adapters_file="./Data/adapters/adapters"
if [ -f "$adapters_file" ]; then
        echo "... OK"
else
    echo "... No adapters file found in ./Data/adapters/, please add the file to continue with the analysis"  
    exit 1
fi

echo "\nChecking reference files..."
check_ref_fna=`ls -1 ./Data/reference_genome_hg38/*.fna 2>/dev/null | wc -l`
if [ $check_ref_fna == 0 ]; then 
    echo "... No .fna reference file in ./Data/reference_genome_hg38/, please add the file to continue with the analysis"  
    exit 1
else
    echo "... .fna reference file - OK"
fi
check_ref_gtf=`ls -1 ./Data/reference_genome_hg38/*.gtf 2>/dev/null | wc -l`
if [ $check_ref_fna == 0 ]; then 
    echo "... No .gtf reference file in ./Data/reference_genome_hg38/, please add the file to continue with the analysis"  
    exit 1
else
    echo "... .gtf reference file - OK"
fi


mkdir Analysis

# sudo sh ./scripts_analysis/data/run_metadata.sh

#sudo sh ./scripts_analysis/run_apps/run_fastqc.sh $N_THREADS
#sudo sh ./scripts_analysis/run_apps/run_seqtk.sh $N_THREADS
#sudo sh ./scripts_analysis/run_apps/run_trimmomatic.sh $N_THREADS

#sudo sh ./scripts_analysis/run_apps/run_bowtie2_index.sh $N_THREADS
#   sudo sh ./scripts_analysis/run_apps/run_tophat2_alignment.sh $N_THREADS $TOPHAT_LIBRARY_TYPE
#sudo sh ./scripts_analysis/run_apps/run_samtools.sh $N_THREADS

#sudo sh ./scripts_analysis/run_apps/run_feature_counts.sh 
sudo sh ./scripts_analysis/run_apps/run_deseq2.sh 
