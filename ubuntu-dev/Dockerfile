
ARG UBUNTU_VERSION=18.04

FROM ubuntu:${UBUNTU_VERSION}

ENV DEBIAN_FRONTEND=noninteractive

RUN set ex; apt-get update \
    && apt-get -y install --no-install-recommends apt-utils dialog 2>&1 \
    && apt-get -y upgrade --no-install-recommends \
    && apt-get -y install software-properties-common \
        build-essential \
        cmake \
        cppcheck \
        valgrind \
        gdb \
        git \
        wget \
        nano \
        iproute2 \
        procps \
        lsb-release \
        ca-certificates \
        locales

RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && locale-gen


# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog