#!/bin/bash -ex

BOOST_VER=$1
BOOST_PATH=$2

cd /usr/local/ 
# wget https://dl.bintray.com/boostorg/release/${BOOST_VER}/source/boost_${BOOST_PATH}.tar.gz
# && tar -xzf boost_${BOOST_PATH}.tar.gz
cd boost_${BOOST_PATH} 
./bootstrap.sh --prefix=/usr/local/boost_${BOOST_PATH} 
./b2 python=2.7,3.8
./b2 install
# cd ..
# rm boost_${BOOST_PATH}.tar.gz # rm -rf boost_${BOOST_PATH}/ &&
