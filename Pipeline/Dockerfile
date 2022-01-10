FROM openjdk:11
# FROM deborawendland/gene-expression-data:basic
# FROM deborawendland/gene-expression-data:bash

WORKDIR /root
COPY . /Pipeline

WORKDIR /Pipeline

RUN sh DockerConfig/install_dependencies.sh
RUN sh DockerConfig/install_basic_requirements.sh
RUN sh DockerConfig/install_fastqc.sh
RUN sh DockerConfig/install_trimmomatic.sh
RUN sh DockerConfig/install_star.sh
RUN sh DockerConfig/install_samtools.sh
RUN sh DockerConfig/install_r.sh

RUN R < DockerConfig/install_dependencies.R --no-save
RUN R < DockerConfig/install_biocmanager.R --no-save
RUN R < DockerConfig/install_rsubread.R --no-save
RUN R < DockerConfig/install_deseq2.R --no-save
RUN R < DockerConfig/install_transcriptogramer.R --no-save
RUN R < DockerConfig/install_pathview.R --no-save

CMD ["bash"]