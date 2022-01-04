docker container stop gene-analysis
docker container rm gene-analysis
docker container ls -a
docker build --tag analysis-pipeline .
# docker run -p 5000:5000 -d -it --name gene-analysis analysis-pipeline
docker run -it --name gene-analysis analysis-pipeline