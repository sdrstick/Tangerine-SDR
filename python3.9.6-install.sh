
#Create a unique directory for the GNU Radio compile and make it the current directory
mkdir -p ~/src/GNURadio && cd ~/src/GNURadio

#download the Python Source code from the python.org repository
wget https://www.python.org/ftp/python/3.9.6/Python-3.9.6.tgz ||
     { echo 'Unable to download the Python source code file'; exit 1; }
  
#Extract the Python source code files
tar -xvzf Python-3.9.6.tgz

#Make the directory containing the uncompressed Python source code the current directory
cd ~/src/GNURadio/Python-3.9.6

#Configure the Makefile for the Python compile
./configure --enable-optimizations --with-ensurepip=install

#Compile and install the Python packages
make -j 3 && sudo make altinstall ||
  { echo 'Unable to install the Python Packages'; exit 1; }

sudo rm /usr/bin/python
sudo ln -s /usr/local/bin/python3.9 /usr/bin/python
