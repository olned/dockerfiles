ARG UBUNTU_VERSION=20.04

FROM olned/ubuntu-gpp:${UBUNTU_VERSION}

ENV DEBIAN_FRONTEND=noninteractive

RUN set ex; apt-get update \
    && apt-get -y install \
        python \
        python-dev \
        python3 \
        python3-dev \
        python3-numpy \
        libjpeg-dev \
        libpng-dev \
        libssl-dev \
        libtiff-dev \
        libbz2-dev \
        libzstd-dev \
        liblzma-dev \
        libicu-dev \
        libopenmpi-dev \
        zlib1g-dev \
        autotools-dev

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog