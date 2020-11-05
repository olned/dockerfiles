ARG UBUNTU_VERSION=20.04
ARG BOOST_VERSION=1.74.0

FROM olned/ubuntu-boost:"${UBUNTU_VERSION}-${BOOST_VERSION}-build" as build

FROM ubuntu:"${UBUNTU_VERSION}"
    COPY --from=build /opt/install /opt/install
