sudo sh Pipeline/DockerConfig/install_basic_requirements.sh
sudo sh Pipeline/DockerConfig/install_dependencies.sh
sudo sh Pipeline/DockerConfig/install_python_dependencies.sh
sudo sh Pipeline/DockerConfig/install_fastqc.sh
sudo sh Pipeline/DockerConfig/install_trimmomatic.sh
sudo sh Pipeline/DockerConfig/install_multiqc.sh
sudo sh Pipeline/DockerConfig/install_star.sh
sudo sh Pipeline/DockerConfig/install_samtools.sh
sudo sh Pipeline/DockerConfig/install_r.sh

sudo R < Pipeline/DockerConfig/install_dependencies.R --no-save
sudo R < Pipeline/DockerConfig/install_biocmanager.R --no-save
sudo R < Pipeline/DockerConfig/install_rsubread.R --no-save
sudo R < Pipeline/DockerConfig/install_deseq2.R --no-save
sudo R < Pipeline/DockerConfig/install_transcriptogramer.R --no-save
sudo R < Pipeline/DockerConfig/install_pathview.R --no-save