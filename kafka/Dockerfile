FROM ubuntu:bionic

ARG KAFKA_VERSION=2.4.1
ARG SCALA_VERSION=2.13
ARG MAINAINER=olned
ARG VCS_REF=unspecified
ARG BUILD_DATE=unspecified

ENV KAFKA_VERSION=$KAFKA_VERSION \
    SCALA_VERSION=$SCALA_VERSION \
    KAFKA_HOME=/opt/kafka

ENV PATH=${PATH}:${KAFKA_HOME}/bin

COPY download-kafka.sh /tmp/

LABEL org.label-schema.name="kafka" \
    org.label-schema.description="Apache Kafka" \
    org.label-schema.build-date="${BUILD_DATE}" \
    org.label-schema.vcs-url="https://github.com/${MAINAINER}/dockerfiles/kafka" \
    org.label-schema.vcs-ref="${VCS_REF}" \
    org.label-schema.version="${SCALA_VERSION}_${KAFKA_VERSION}" \
    org.label-schema.schema-version="0.1" \
    maintainer="${MAINAINER}"

RUN apt-get update \
    && apt-get -y install curl wget jq default-jre

RUN /tmp/download-kafka.sh \
    && tar xfz /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz -C /opt \
    && rm /tmp/download-kafka.sh /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz \
    && ln -s /opt/kafka_${SCALA_VERSION}-${KAFKA_VERSION} ${KAFKA_HOME}

WORKDIR ${KAFKA_HOME}
