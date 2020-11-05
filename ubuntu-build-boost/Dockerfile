ARG UBUNTU_VERSION=20.04

FROM olned/ubuntu-4-boost:"${UBUNTU_VERSION}"

ARG BOOST_VERSION=1.74.0
ARG BOOST_SUBSTR=1_74_0
ARG PYTHON3_VER=3.8
ENV BOOST_SRC=/opt/src/boost_${BOOST_SUBSTR}

ADD site-config.jam /etc/
ADD "boost_${BOOST_SUBSTR}.tar.gz" /opt/src/

RUN cd ${BOOST_SRC} && ./bootstrap.sh --prefix=/opt/install \
    && cd ${BOOST_SRC} && ./b2 python=2.7,${PYTHON3_VER} \
    && cd ${BOOST_SRC} && ./b2 install
