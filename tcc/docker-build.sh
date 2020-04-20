#!/bin/bash -ex

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}

. config_file

if [ -n "$1" ]; then
  MAINAINER=$1
fi

BASE_IMAGE="${MAINAINER}/${IMAGE_NAME}"
TARGET="${BASE_IMAGE}:${IMAGE_VERSION}"

docker build -t "${TARGET}" \
  --build-arg BOOST_VERSION="${BOOST_VERSION}" \
  .