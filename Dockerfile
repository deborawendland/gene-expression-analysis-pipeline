# syntax=docker/dockerfile:1
FROM staphb/fastqc AS fastqc

WORKDIR /root
COPY . .
# RUN fastqc SRR957824_500K_R1.fastq.gz SRR957824_500K_R2.fastq.gz

# RUN sh DockerConfig/requirements.sh
# RUN R < DockerConfig/requirements.R --no-save
# RUN R < DockerConfig/requirements.R --no-save


# FROM r-base AS rbase
# WORKDIR /root
# COPY --from=0 . .

CMD ["bash"]