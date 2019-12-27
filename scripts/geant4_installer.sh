#! /usr/bin/env bash

# toke from: https://gist.github.com/zodiacfireworks/93513d2ce6ee9f1e65716b1741dfca0f

sudo apt-get -y install \
    autotools-dev \
    axel \
    binutils \
    build-essential \
    cmake \
    console-setup \
    dpkg-dev \
    expat \
    freeglut3-dev \
    ftp \
    g++ \
    g++-6 \
    gcc \
    gfortran \
    imagemagick \
    libblas-dev \
    libblas3 \
    libblas3gf \
    libboost-all-dev \
    libboost-dev \
    libboost-signals-dev \
    libcuda1 \
    libcudart9.1 \
    libexpat1 \
    libexpat1-dev \
    libfftw3-3 \
    libfftw3-bin \
    libfftw3-dev \
    libfftw3-long3 \
    libfftw3-quad3 \
    libgsl-dev \
    libhdf5-dev \
    liblapack-dev \
    liblapack3 \
    liblapack3gf \
    libmpich-dev \
    libmpikmeans-dev \
    libmpikmeans1 \
    libopenblas-base \
    libopenblas-dev \
    libopengl0 \
    libopenmpi-dev \
    libopenmpi3 \
    libtbb-dev \
    libtiff-dev \
    libwt-common \
    libwt-dev \
    libwt38 \
    libwt40 \
    libx11-dev \
    libxerces-c-dev \
    libxext-dev \
    libxft-dev \
    libxi-dev \
    libxmu-dev \
    libxpm-dev \
    libz3-dev \
    mpich \
    mpikmeans-tools \
    nmap \
    nvidia-cuda-dev \
    nvidia-cuda-doc \
    nvidia-cuda-gdb \
    nvidia-cuda-mps \
    nvidia-cuda-toolkit \
    nvidia-smi \
    openssh-server \
    perl-tk \
    qt5-assistant \
    qt5-default \
    qtbase5-dev \
    qtbase5-dev-tools \
    qtcreator \
    xzdec
mkdir ~/Sources
cd ~/Sources
wget -c http://cern.ch/geant4-data/releases/geant4.10.04.p02.tar.gz
tar -xzvf geant4.10.04.p02.tar.gz
mkdir geant4.10.04.p02-build
cd geant4.10.04.p02-build
cmake \
    -DGEANT4_INSTALL_DATA=ON \
    -DGEANT4_USE_HDF5=ON \
    -DGEANT4_BUILD_MUONIC_ATOMS_IN_USE=ON \
    -DGEANT4_USE_SYSTEM_ZLIB=ON \
    -DGEANT4_USE_QT=ON \
    -DGEANT4_USE_GDML=ON \
    -DGEANT4_BUILD_MULTITHREADED=ON \
    -DCMAKE_INSTALL_PREFIX=/opt/geant4 \
    ../geant4.10.04.p02
make
sudo make install
