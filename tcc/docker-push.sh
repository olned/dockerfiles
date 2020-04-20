#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}

. config_file

if [ -n "$1" ]; then
  MAINAINER=$1
fi

BASE_IMAGE="${MAINAINER}/${IMAGE_NAME}"
TARGET="$BASE_IMAGE:$IMAGE_VERSION"
LATEST="$BASE_IMAGE:latest"

docker tag "$TARGET" "$LATEST"
docker login && docker push "$TARGET" && docker push "$LATEST"
