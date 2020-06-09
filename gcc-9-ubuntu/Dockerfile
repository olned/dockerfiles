ARG UBUNTU_VERSION=20.04

FROM olned/ubuntu-dev:${UBUNTU_VERSION}

ENV DEBIAN_FRONTEND=noninteractive

RUN set ex; apt-get update \
    && add-apt-repository ppa:ubuntu-toolchain-r/test \
    && apt-get update \
    && apt-get -y install \
        gcc-9 \
        g++-9 \
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*


# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog