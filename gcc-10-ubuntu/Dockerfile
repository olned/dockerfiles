ARG UBUNTU_VERSION=20.04

FROM olned/ubuntu-dev:${UBUNTU_VERSION}

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update 
RUN if [ "$UBUNTU_VERSION" = "18.04" ] ; then add-apt-repository ppa:ubuntu-toolchain-r/test && apt-get update; fi
RUN apt-get -y install \
        gcc-10 \
        g++-10 \
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 100 \
#     --slave /usr/bin/g++ g++ /usr/bin/g++-10 \
#     --slave /usr/bin/gcov gcov /usr/bin/gcov-10

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog