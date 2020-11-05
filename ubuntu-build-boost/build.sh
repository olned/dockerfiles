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


if [ "$UBUNTU_VERSION" = "18.04" ] ; then 
  PYTHON3_VER=3.6 
else 
  PYTHON3_VER=3.8 
fi


cp -f ${UBUNTU_VERSION}/site-config.jam ./

BASE_IMAGE="${MAINAINER}/${IMAGE_NAME}"
TARGET="${BASE_IMAGE}:${UBUNTU_VERSION}-${BOOST_VERSION}-build"

docker build -t "${TARGET}" \
  --build-arg UBUNTU_VERSION="${UBUNTU_VERSION}" \
  --build-arg BOOST_VERSION="${BOOST_VERSION}" \
  --build-arg BOOST_SUBSTR="${BOOST_SUBSTR}" \
  --build-arg PYTHON3_VER="${PYTHON3_VER}" \
  .
