#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}

. config_file

if [ -n "$1" ]; then
  MAINAINER=$1
fi

if [ -n "$2" ]; then
  UBUNTU_VERSION=$2
fi

echo MAINAINER=${MAINAINER} > config_file
echo IMAGE_NAME=${IMAGE_NAME} >> config_file
echo UBUNTU_VERSION=${UBUNTU_VERSION} >> config_file

BASE_IMAGE="${MAINAINER}/${IMAGE_NAME}"
TARGET="$BASE_IMAGE:$UBUNTU_VERSION"

docker build -t "${TARGET}" \
  --build-arg UBUNTU_VERSION="${UBUNTU_VERSION}" \
  .