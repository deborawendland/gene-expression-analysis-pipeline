docker container stop analysis
docker container rm analysis
docker container ls -a
docker build --tag deborawendland/gene-expression-pipeline:analysis .
# docker run -p 5000:5000 -d -it --name gene-analysis analysis-pipeline
docker run -it --name analysis deborawendland/gene-expression-pipeline:analysis