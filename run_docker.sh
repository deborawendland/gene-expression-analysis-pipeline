docker container stop analysis
docker container rm analysis
docker container ls -a
docker volume create analysis-data
docker build --tag deborawendland/gene-expression-pipeline:analysis .
# docker run -p 5000:5000 -d -it --name gene-analysis analysis-pipeline
# docker run -it --name analysis deborawendland/gene-expression-pipeline:analysis
docker run -p 8080:5000 --name analysis deborawendland/gene-expression-pipeline:analysis

docker run -it -v E:\gene-expression-analysis-pipeline\Data:/root/Data --name analysis deborawendland/gene-expression-pipeline:analysis