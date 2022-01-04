docker container stop gene-analysis-data
docker container rm gene-analysis-data
docker container ls -a
docker build --tag analysis-pipeline-data .
docker run -it --name gene-analysis-data analysis-pipeline-data
#docker run -i --name gene-analysis-data analysis-pipeline-data

#docker tag analysis-pipeline-data deborawendland/gene-expression-data
#docker push deborawendland/gene-expression-data
