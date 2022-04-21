#!/usr/bin/env bash

timestamp() {
  date +"%T"
}

echo "Initializing installations"
timestamp

INSTALL_PATH="./install"
INSTALLATIONS_PATH=${INSTALL_PATH}/installations

mkdir ${INSTALLATIONS_PATH}

sudo sh ./${INSTALL_PATH}/install_basic_requirements.sh
sudo sh ./${INSTALL_PATH}/install_dependencies.sh
sudo sh ./${INSTALL_PATH}/install_python_dependencies.sh
sudo sh ./${INSTALL_PATH}/install_fastqc.sh
sudo sh ./${INSTALL_PATH}/install_trimmomatic.sh
sudo sh ./${INSTALL_PATH}/install_samtools.sh
sudo sh ./${INSTALL_PATH}/install_r.sh
sudo sh ./${INSTALL_PATH}/install_bowtie2.sh
sudo sh ./${INSTALL_PATH}/install_feature_counts.sh
sudo sh ./${INSTALL_PATH}/install_seqtk.sh
sudo sh ./${INSTALL_PATH}/install_tophat2.sh

sudo R < ./${INSTALL_PATH}/install_dependencies.R --no-save

sudo sh ./${INSTALL_PATH}/create_symbolic_links.sh

echo "\nDownloading reference genomes"
timestamp

sudo sh ./scripts_analysis/data/download_reference_genome.sh

timestamp