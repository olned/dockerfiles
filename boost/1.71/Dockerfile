FROM olned/gcc:9

RUN apt-get update && apt-get -y install ca-certificates cmake wget 

RUN apt-get update && apt-get -y install \
    python-dev \
    libbz2-dev \
    libicu-dev \
    liblzma-dev \
    libssl-dev \
    zlib1g-dev \
    libzmq3-dev \
    autotools-dev
    
RUN wget https://dl.bintray.com/boostorg/release/1.71.0/source/boost_1_71_0.tar.gz
RUN tar -xzf boost_1_71_0.tar.gz
RUN cd boost_1_71_0 && \
    ./bootstrap.sh --prefix=/usr/local/boost_1_71_0 \
    ./b2 && \
    ./b2 install
RUN rm -rf boost_1_71_0/ && rm boost_1_71_0.tar.gz
