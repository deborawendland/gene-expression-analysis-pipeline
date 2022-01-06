# install and update basic ubuntu packages on docker image 
apt update -y
apt upgrade -y
apt-get install software-properties-common -y
apt install wget -y
apt install vim -y
apt-get install g++ -y
apt-get install make -y

# programs
apt install fastqc -y
apt install trimmomatic -y

wget https://github.com/alexdobin/STAR/archive/2.7.9a.tar.gz
tar -xzf 2.7.9a.tar.gz
cd STAR-2.7.9a
cd STAR/source
make STAR

apt-get install samtool -y

# others

# apt-get install python3 -y
# apt-get install python3-pip -y
apt update -y
apt upgrade -y
apt-get install r-base -y

# dependencies

# install python libraries
# apt-get install python3-pandas -y
