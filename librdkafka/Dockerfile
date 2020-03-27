FROM olned/gcc:9

ARG BOOST_VERSION=1.3.0

# Install librdkafka
RUN apt-get update \
    && apt-get -y install wget  \
    && apt-get -y install zlib1g-dev  \
    && apt-get -y install libssl-dev  \
    && apt-get -y install libsasl2-dev

RUN set -e; cd tmp \
    && wget https://github.com/edenhill/librdkafka/archive/v1.3.0.tar.gz \
    && tar -xzf v1.3.0.tar.gz \
    && cd librdkafka-1.3.0 \
    && ./configure \
    && make \
    && make install \
    && cd /tmp \
    && rm /tmp/v1.3.0.tar.gz
#    && rm -rf /tmp/librdkafka-1.3.0
