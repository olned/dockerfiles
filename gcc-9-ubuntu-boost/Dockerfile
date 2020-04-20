ARG UBUNTU_VERSION=18.04

FROM olned/gcc-9-ubuntu:${UBUNTU_VERSION}

ARG BOOST_VERSION=1.71.0

RUN apt-get update && apt-get -y install \
    python-dev \
    libbz2-dev \
    libicu-dev \
    liblzma-dev \
    libssl-dev \
    zlib1g-dev \
    libzmq3-dev \
    autotools-dev \
    wget

COPY build-boost.sh ./



RUN ./build-boost.sh ${BOOST_VERSION}

# Switch back to dialog for any ad-hoc use of apt-get
# ENV DEBIAN_FRONTEND=dialog