# install and update basic ubuntu packages on docker image 
apt update -y
# apt upgrade -y
apt-get install software-properties-common -y
apt install wget -y
apt install vim -y

# dependencies STAR
apt-get install g++ -y
apt-get install make -y
apt install zlib1g-dev -y
# apt-get install libbz2-dev