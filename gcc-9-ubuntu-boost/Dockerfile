ARG UBUNTU_VERSION=20.04

FROM olned/gcc-9-ubuntu:"${UBUNTU_VERSION}-for-boost"

ARG BOOST_VERSION=1.73.0
ARG BOOST_SUBSTR=1_73_0
ENV BOOST_ROOT=/usr/local/src/boost_${BOOST_SUBSTR}

ADD site-config.jam /etc/
ADD "boost_${BOOST_SUBSTR}.tar.gz" /usr/local/src/

RUN cd ${BOOST_ROOT} && ./bootstrap.sh 
RUN cd ${BOOST_ROOT} && ./b2 python=2.7,3.8
RUN cd ${BOOST_ROOT} && ./b2 install
