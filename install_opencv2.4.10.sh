#! /bin/bash
sudo yum install -y gcc g++ gtk+-devel libjpeg-devel libtiff-devel jasper-devel libpng-devel zlib-devel cmake unzip
sudo yum install -y yum-priorities
wget http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo rpm -ivh epel-release-6-8.noarch.rpm
sudo yum install -y eigen3-devel —enablerepo=epel
pip install numpy
 
wget http://downloads.sourceforge.net/project/opencvlibrary/opencv-unix/2.4.10/opencv-2.4.10.zip
unzip opencv-2.4.10
cd opencv-2.4.10
mkdir build
cd build
export PYTHON_EXECUTABLE=/usr/bin/python2.6
export PYTHON_INCLUDE_PATH=/usr/include/
export PYTHON_LIBRARY=/usr/lib64/libpython2.6.so.1.0
export PYTHON_NUMPY_INCLUDE_DIR=/usr/lib64/python2.6/site-packages/numpy/core/include
export PYTHON_PACKAGES_PATH=/usr/lib64/python2.6/site-packages/
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_NEW_PYTHON_SUPPORT=ON -D BUILD_EXAMPLES=ON ..
make
sudo make install
