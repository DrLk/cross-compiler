#!/bin/sh

BINUTILS="2.32"

GCC="8.3.0"

GMP="6.1.2"

MPC="1.1.0"

MPFR="4.0.2"

wget https://ftp.gnu.org/gnu/gcc/gcc-$GCC/gcc-$GCC.tar.xz

tar -xvf gcc-$GCC.tar.xz

rm gcc-$GCC.tar.xz

wget https://ftp.gnu.org/gnu/gmp/gmp-$GMP.tar.xz

tar -xvf gmp-$GMP.tar.xz

rm gmp-$GMP.tar.xz

wget https://ftp.gnu.org/gnu/mpc/mpc-$MPC.tar.gz

tar -xvf mpc-$MPC.tar.gz

rm mpc-$MPC.tar.gz

wget https://www.mpfr.org/mpfr-current/mpfr-$MPFR.tar.xz 

tar -xvf mpfr-$MPFR.tar.xz

rm mpfr-$MPFR.tar.xz


wget http://ftp.gnu.org/gnu/binutils/binutils-$BINUTILS.tar.gz

tar xf binutils-$BINUTILS.tar.gz

rm binutils-$BINUTILS.tar.gz


