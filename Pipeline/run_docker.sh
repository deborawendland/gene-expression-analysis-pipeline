docker container stop pipeline
docker container rm pipeline
docker container ls -a
docker build --tag deborawendland/gene-expression-pipeline:dev .
docker run -it --name pipeline deborawendland/gene-expression-pipeline:dev