
ARG UBUNTU_VERSION=18.04

FROM ubuntu:${UBUNTU_VERSION}

ENV DEBIAN_FRONTEND=noninteractive

RUN set ex; apt-get update \
    && apt-get -y install --no-install-recommends apt-utils dialog 2>&1 \
    && apt-get -y upgrade --no-install-recommends \
    && apt-get -y install software-properties-common \
        autoconf \
        automake \
        build-essential \
        ca-certificates \
        cmake \
        cppcheck \
        curl \
        g++ \
        gcc \
        gdb \
        git \
        iproute2 \
        libtool \
        locales \
        lsb-release \
        make \
        nano \
        procps \
        sudo \
        unzip \
        valgrind \
        wget \
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && locale-gen


# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog