FROM openjdk:11

WORKDIR /root
COPY . .

# RUN sh DockerConfig/requirements.sh
RUN sh DockerConfig/basic_requirements.sh
RUN sh DockerConfig/fastqc.sh
RUN sh DockerConfig/trimmomatic.sh
RUN sh DockerConfig/star_requirement.sh
RUN sh DockerConfig/samtool.sh
RUN sh DockerConfig/r_requirement.sh

# RUN R < DockerConfig/requirements.R --no-save
RUN R < DockerConfig/install_biocmanager.R --no-save
RUN R < DockerConfig/install_rsubread.R --no-save
RUN R < DockerConfig/install_deseq2.R --no-save
RUN R < DockerConfig/install_transcriptogramer.R --no-save
RUN R < DockerConfig/install_pathview.R --no-save

CMD ["bash"]