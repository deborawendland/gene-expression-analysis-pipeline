docker container stop pipeline-data
docker container rm pipeline-data
docker container ls -a
docker build --tag deborawendland/gene-expression-pipeline:data-sample .
docker run -it --name pipeline-data deborawendland/gene-expression-pipeline:data-sample
#docker run -i --name pipeline-data pipeline-data

docker tag pipeline-data deborawendland/gene-expression-pipeline:data-samples