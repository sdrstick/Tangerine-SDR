#!/bin/sh
#install Latest Python3 on the RPi with Ubuntu Mate 20.10
#N4XWE 6-7-2021
#Test Compiled on Ubuntu Mate 20.10 for the Raspberry Pi 32-bit

#Change the directory containing the sources.list file (/etc/apt) to the current directory
cd /etc/apt

#Enable the Debian sources by replacing all instances of the phrase "#deb-src" in the sources.list file with "deb-src"
sudo sed -i 's/#deb-src/deb-src/g' sources.list

#Update the apt cache and upgrade the system packages to their latest versions
sudo apt update && sudo apt upgrade -y

#Add the compile dependencies
sudo apt install -y git cmake g++ libffi-dev zlibc libncurses-dev libreadline-dev \
libgdbm-dev libssl-dev tcl-dev libsqlite3-dev liblzma-dev lzma-dev uuid-dev libbz2-dev tk8.6-dev ||
	{ echo 'Dependency installation failed'; exit 1;}

	
#If your RPi has less than 4GB of RAM add and enable a 2GB Swapfileby removing #
#sudo fallocate -l 2G /swapfile
#sudo chmod 600 /swapfile
#sudo mkswap /swapfile
#sudo swapon /swapfile

#Create a unique directory for the Python3 compile and make it the current directory
mkdir -p ~/src/Python3 && cd ~/src/Python3

#Download the latest python 3.9.5 source code from python.org
wget https://www.python.org/ftp/python/3.9.5/Python-3.9.5.tar.xz

#Extract the source code tarball
tar -xvf Python-3.9.5.tar.xz

#Change the directory containing the Python source code to the current directory
cd ~/src/Python3/Python-3.9.5
  
#Configure the Python3 Source Package
./configure --enable-optimizations

#Compile the Python executable code and library files
make -j3 ||
{ echo 'Unable to compile the Python executable source code and libraries'; exit 1; }

#Test the compiled Python code
make test ||
{ echo 'The Python executable source code and library test was unsuccessful'; exit 1; }

#Install the Python executable code and library files
sudo make install ||
{ echo 'Unable to install the Python executable source code and libraries'; exit 1; }

#Link the Python library files
sudo ldconfig

#Change the directory containing the sources.list file (/etc/apt) to the current directory
cd /etc/apt

#Disable the Debian sources by replacing all instances of the phrase "deb-src" in the sources.list file with "#deb-src"
sudo sed -i 's/deb-src/#deb-src/g' sources.list





