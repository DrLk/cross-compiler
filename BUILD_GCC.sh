#!/bin/sh

BINUTILS="2.32"

GCC="8.3.0"

GMP="6.1.2"

MPC="1.1.0"

MPFR="4.0.2"

export PREFIX="/usr/local/i386elfgcc"
export TARGET=i386-elf
export PATH="$PREFIX/bin:$PATH"

mkdir build_binutils
cd    build_binutils
../binutils-$BINUTILS/configure --target=$TARGET --enable-interwork --enable-multilib --disable-nls --disable-werror --prefix=$PREFIX 2>&1 | tee configure.log
make clean
make all install 2>&1 | tee make.log

cd ..

cp -r  gmp-$GMP gcc-$GCC/gmp/

cp -r  mpc-$MPC gcc-$GCC/mpc/

cp -r  mpfr-$GMP gcc-$GCC/mpfr/


mkdir gcc-build
cd gcc-build
../gcc-$GCC/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --disable-libssp --enable-languages=c --without-headers
make clean
make all-gcc 
make all-target-libgcc 
make install-gcc 
make install-target-libgcc 

cd ..

export CC=/usr/local/bin/gcc-$GCC
export LD=/usr/local/bin/gcc-$GCC


