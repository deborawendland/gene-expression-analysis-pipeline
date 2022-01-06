FROM ubuntu

WORKDIR /root
COPY . .

RUN sh DockerConfig/requirements.sh
RUN R < DockerConfig/requirements.R --no-save

CMD ["bash"]