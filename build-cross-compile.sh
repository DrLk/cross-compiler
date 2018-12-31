#!/bin/sh

mkdir $HOME/src
cd $HOME/src

wget http://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.gz

tar xvf binutils-2.24.tar.gz

wget http://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.gz

tar xvf gcc-4.9.1.tar.gz

apt-get install libmpc-dev

apt-get install libcloog-isl-dev

apt-get install libisl-dev

apt-get install libmpfr-dev

apt-get install libgmp3-dev

export PREFIX="$HOME/opt/cross"
export TARGET=x86_64-elf 
export PATH="$PREFIX/bin:$PATH"

mkdir build-binutils 
cd build-binutils 
../binutils-2.14/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --disable-werror 
make -j12 
sudo make -j12 install

cd ..

mkdir build-gcc
cd build-gcc
../gcc-4.9.1/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers
make -j12 all-gcc
make -j12 all-target-libgcc
sudo make install-gcc
sudo make install-target-libgcc
