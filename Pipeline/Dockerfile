FROM openjdk:11
# FROM deborawendland/gene-expression-data:basic
# FROM deborawendland/gene-expression-data:bash

WORKDIR /root
COPY . Pipeline/

RUN sh Pipeline/DockerConfig/install_basic_requirements.sh
RUN sh Pipeline/DockerConfig/install_dependencies.sh
RUN sh Pipeline/DockerConfig/install_python_dependencies.sh
RUN sh Pipeline/DockerConfig/install_fastqc.sh
RUN sh Pipeline/DockerConfig/install_trimmomatic.sh
RUN sh Pipeline/DockerConfig/install_multiqc.sh
RUN sh Pipeline/DockerConfig/install_star.sh
RUN sh Pipeline/DockerConfig/install_samtools.sh
RUN sh Pipeline/DockerConfig/install_r.sh

RUN R < Pipeline/DockerConfig/install_dependencies.R --no-save
RUN R < Pipeline/DockerConfig/install_biocmanager.R --no-save
RUN R < Pipeline/DockerConfig/install_rsubread.R --no-save
RUN R < Pipeline/DockerConfig/install_deseq2.R --no-save
RUN R < Pipeline/DockerConfig/install_transcriptogramer.R --no-save
RUN R < Pipeline/DockerConfig/install_pathview.R --no-save

CMD ["bash"]