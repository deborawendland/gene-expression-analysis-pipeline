docker container stop pipeline
docker container rm pipeline
docker container ls -a
docker build --tag pipeline .
# docker run -p 5000:5000 -d -it --name pipeline pipeline
docker run -it --name pipeline pipeline