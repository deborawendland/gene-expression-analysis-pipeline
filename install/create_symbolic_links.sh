#!/bin/bash

link_path="/usr/bin"
installations_path="install/installations"

bowtie2="${installations_path}/bowtie2"
seqtk="${installations_path}/seqtk"
tophat2="${installations_path}/tophat2"

pipeline_absolute_path=$1

ln -sf ${pipeline_absolute_path}/${seqtk}/seqtk ${link_path}/seqtk
ln -sf ${pipeline_absolute_path}/${tophat2}/tophat2 ${link_path}/tophat2
ln -sf ${pipeline_absolute_path}/${tophat2}/tophat2/samtools_0.1.18 ${link_path}/samtools_0.1.18
ln -sf ${pipeline_absolute_path}/${bowtie2}/bowtie2 ${link_path}/bowtie2
ln -sf ${pipeline_absolute_path}/${bowtie2}/bowtie2-align ${link_path}/bowtie2-align
ln -sf ${pipeline_absolute_path}/${bowtie2}/bowtie2-inspect ${link_path}/bowtie2-inspect
ln -sf ${pipeline_absolute_path}/${bowtie2}/bowtie2-build ${link_path}/bowtie2-build
