
ARG UBUNTU_VERSION

FROM ubuntu:"${UBUNTU_VERSION}" as build
    ENV DEBIAN_FRONTEND=noninteractive

    RUN set ex; apt-get update \
        && apt-get -y install --no-install-recommends apt-utils dialog 2>&1 \
        && apt-get -y upgrade --no-install-recommends \
        && apt-get -y install software-properties-common \
            build-essential \
            autoconf \
            automake \
            libtool \
            g++ \
            unzip \
        # Clean up
        && apt-get autoremove -y \
        && apt-get clean -y \
        && rm -rf /var/lib/apt/lists/*

    ENV PROBUF_ROOT=/opt/src/protobuf-3.13.0
    ADD "protobuf-cpp-3.13.0.tar.gz" /opt/src/

    RUN set -ex; cd ${PROBUF_ROOT} \
        && ./autogen.sh \
        && ./configure --prefix=/opt/install \
        && make \
        && make check \
        && make install \
        && ldconfig

    # Switch back to dialog for any ad-hoc use of apt-get
    ENV DEBIAN_FRONTEND=dialog

FROM ubuntu:"${UBUNTU_VERSION}"
    COPY --from=build /opt/install /opt/install