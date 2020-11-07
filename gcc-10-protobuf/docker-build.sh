#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}

. config_file
echo "BOOST_VER: ${UBUNTU_VERSION}"
echo "BOOST_VER: ${BOOST_VERSION}"
echo "PROTOBUF_VERSION: ${PROTOBUF_VERSION}"

echo "PROTOBUF_ROOT: ${PROTOBUF_ROOT}"

if [ -n "$1" ]; then
  MAINAINER=$1
fi

BASE_IMAGE="${MAINAINER}/${IMAGE_NAME}"
TARGET="${BASE_IMAGE}:${UBUNTU_VERSION}-boost-${BOOST_VERSION}-protobuf-${PROTOBUF_VERSION}"

docker build -t "${TARGET}" \
  --build-arg UBUNTU_VERSION="${UBUNTU_VERSION}" \
  --build-arg BOOST_VERSION="${BOOST_VERSION}" \
  --build-arg PROTOBUF_VERSION="${PROTOBUF_VERSION}" \
  .