#!/bin/bash

. config_file

if [ -n "$1" ]; then
  MAINAINER=$1
fi

BASE_IMAGE="${MAINAINER}/kafka"
IMAGE_VERSION="${SCALA_VERSION}-${KAFKA_VERSION}"
TARGET="$BASE_IMAGE:$IMAGE_VERSION"

docker login && docker push "$TARGET"
