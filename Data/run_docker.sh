docker container stop pipeline-data
docker container rm pipeline-data
docker container ls -a
docker build --tag pipeline-data .
docker run -it --name pipeline-data pipeline-data
#docker run -i --name pipeline-data pipeline-data

docker tag pipeline-data deborawendland/gene-expression-pipeline:data
