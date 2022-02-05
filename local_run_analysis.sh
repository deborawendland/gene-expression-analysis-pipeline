# mkdir Analysis

# sudo sh ./scripts_analysis/data/run_metadata.sh
# sudo sh ./scripts_analysis/new_dependencies.sh 

# sudo sh ./scripts_analysis/run_apps/run_fastqc.sh 
# sudo sh ./scripts_analysis/run_apps/run_seqtk.sh 
# sudo sh ./scripts_analysis/run_apps/run_trimmomatic.sh
# sudo sh ./scripts_analysis/run_apps/run_multiqc.sh 

# sudo sh ./scripts_analysis/run_apps/run_bowtie2_index.sh 
# sudo sh ./scripts_analysis/run_apps/run_tophat2_alignment.sh 
# sudo sh ./scripts_analysis/run_apps/run_samtools.sh 

# sudo sh ./scripts_analysis/run_apps/run_feature_counts.sh 

sudo sh R < ./install/install_dependencies.R --no-save

sudo sh ./scripts_analysis/run_apps/run_deseq2.sh 
# sudo sh ./scripts_analysis/run_apps/run_transcriptogramer.sh 
# sudo sh ./scripts_analysis/run_apps/run_pathview.sh 
