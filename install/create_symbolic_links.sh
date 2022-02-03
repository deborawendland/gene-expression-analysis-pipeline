#!/usr/bin/env bash

link_path="/usr/bin"
installations_path="install/installations"
config_file="./data.config"

bowtie2="${installations_path}/bowtie2"
seqtk="${installations_path}/seqtk"
tophat2="${installations_path}/tophat2"

. ${config_file}

ln -s ${pipeline_absolute_path}/${seqtk}/seqtk ${link_path}/seqtk
ln -s ${pipeline_absolute_path}/${tophat2}/tophat2 ${link_path}/tophat2
ln -s ${pipeline_absolute_path}/${bowtie2}/bowtie2 ${link_path}/bowtie2
ln -s ${pipeline_absolute_path}/${bowtie2}/bowtie2-align ${link_path}/bowtie2-align
ln -s ${pipeline_absolute_path}/${bowtie2}/bowtie2-inspect ${link_path}/bowtie2-inspect
ln -s ${pipeline_absolute_path}/${bowtie2}/bowtie2-build ${link_path}/bowtie2-build
