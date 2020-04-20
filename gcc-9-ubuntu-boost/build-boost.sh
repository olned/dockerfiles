#!/bin/bash -ex

BOOST_VER=$1
BOOST_PATH="${BOOST_VER//./_}"

wget https://dl.bintray.com/boostorg/release/${BOOST_VER}/source/boost_${BOOST_PATH}.tar.gz
tar -xzf boost_${BOOST_PATH}.tar.gz
cd boost_${BOOST_PATH} && \
    ./bootstrap.sh --prefix=/usr/local/boost_${BOOST_PATH} \
    ./b2 && \
    ./b2 install
cd ..
rm -rf boost_${BOOST_PATH}/ && rm boost_${BOOST_PATH}.tar.gz
