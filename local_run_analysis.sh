mkdir Analysis

sudo sh scripts_local/new_dependencies.sh
sudo sh scripts_local/run_apps/run_fastqc.sh
sudo sh scripts_local/run_apps/run_trimmomatic.sh
sudo sh scripts_local/run_apps/run_multiqc.sh

# sudo sh scripts_local/run_apps/run_star.sh