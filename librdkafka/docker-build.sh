#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}

. config_file

if [ -n "$1" ]; then
  MAINAINER=$1
fi

BASE_IMAGE="${MAINAINER}/${IMAGE_NAME}"
IMAGE_VERSION="${LIBRKAFKA_VERSION}"
TARGET="$BASE_IMAGE:$IMAGE_VERSION"

docker build -t "${TARGET}" \
  --build-arg MAINAINER="${MAINAINER}" \
  --build-arg VCS_REF=`git rev-parse --short HEAD` \
  --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
  .