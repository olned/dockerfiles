#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}

. config_file

if [ -n "$1" ]; then
  MAINAINER=$1
fi

IMAGE_NAME=gcc-9-ubuntu-${UBUNTU_VERSION}-boost
BASE_IMAGE="${MAINAINER}/${IMAGE_NAME}"
TARGET="${BASE_IMAGE}:${BOOST_VERSION}"

docker build -t "${TARGET}" \
  --build-arg UBUNTU_VERSION="${UBUNTU_VERSION}" \
  --build-arg BOOST_VERSION="${BOOST_VERSION}" \
  .