FROM ubuntu:bionic

RUN apt-get update 
RUN apt-get -y install software-properties-common

RUN add-apt-repository ppa:ubuntu-toolchain-r/test 
RUN apt-get update 
RUN apt-get -y install build-essential gcc-9 g++-9

RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 90 \
    --slave /usr/bin/g++ g++ /usr/bin/g++-9 \
    --slave /usr/bin/gcov gcov /usr/bin/gcov-9
