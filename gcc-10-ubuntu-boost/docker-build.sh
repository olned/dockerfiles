#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}

. config_file
echo "BOOST_VER: ${UBUNTU_VERSION}"
echo "BOOST_VER: ${BOOST_VERSION}"

BOOST_SUBSTR="${BOOST_VERSION//./_}"

if [ -n "$1" ]; then
  MAINAINER=$1
fi

IMAGE_NAME=gcc-10-ubuntu
BASE_IMAGE="${MAINAINER}/${IMAGE_NAME}"
TARGET="${BASE_IMAGE}:${UBUNTU_VERSION}-boost-${BOOST_VERSION}"

docker build -t "${TARGET}" \
  --build-arg UBUNTU_VERSION="${UBUNTU_VERSION}" \
  --build-arg BOOST_VERSION="${BOOST_VERSION}" \
  --build-arg BOOST_SUBSTR="${BOOST_SUBSTR}" \
  .