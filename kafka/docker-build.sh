#!/bin/bash

. config_file

if [ -n "$1" ]; then
  MAINAINER=$1
fi

BASE_IMAGE="${MAINAINER}/kafka"
IMAGE_VERSION="${SCALA_VERSION}-${KAFKA_VERSION}"
TARGET="$BASE_IMAGE:$IMAGE_VERSION"

docker build -t "${TARGET}" \
  --build-arg KAFKA_VERSION="${KAFKA_VERSION}" \
  --build-arg SCALA_VERSION="${SCALA_VERSION}" \
  --build-arg MAINAINER="${MAINAINER}" \
  --build-arg VCS_REF=`git rev-parse --short HEAD` \
  --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
  .