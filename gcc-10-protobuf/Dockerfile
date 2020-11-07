ARG UBUNTU_VERSION=20.04
ARG BOOST_VERSION=1.74.0
ARG PROTOBUF_VERSION=3.13.0

FROM olned/gcc-10-ubuntu:${UBUNTU_VERSION}-boost-${BOOST_VERSION}

ENV DEBIAN_FRONTEND=noninteractive

RUN set ex; apt-get update \
    && apt-get -y install \
    # install software-properties-common \
        # build-essential \
        # cmake \
        # lsb-release \
        # ca-certificates \
        # locales \
        autoconf \
        automake \
        libtool \
        curl \
        # make \
        # g++-10 \
        unzip \
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# ENV PROTOBUF_ROOT=
ENV PROTOBUF_ROOT="/usr/local/src/protobuf-3.13.0" 

ADD "protobuf-cpp-3.13.0.tar.gz" /usr/local/src/

RUN set -ex; cd ${PROTOBUF_ROOT} \
    && ./autogen.sh \
    && ./configure \
    && make \
    && make check \
    && make install \
    && ldconfig \
    && cd .. \
    && rm -rf /usr/local/src/protobuf-3.13.0
    
# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog