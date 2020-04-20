ARG UBUNTU_VERSION=18.04

FROM olned/ubuntu-dev:${UBUNTU_VERSION}

ENV DEBIAN_FRONTEND=noninteractive

RUN set ex; add-apt-repository ppa:ubuntu-toolchain-r/test \
    && apt-get update \
    && apt-get install -y gcc-9 g++-9

RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 90 \
    --slave /usr/bin/g++ g++ /usr/bin/g++-9 \
    --slave /usr/bin/gcov gcov /usr/bin/gcov-9

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog