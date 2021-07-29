#! /bin/bash

CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker build --no-cache \
    -f ${CWD}/Dockerfile \
    -t ${ECR_REGISTRY}/${ECR_REPOSITORY}:$IMG_TAG \
    ${CWD}

docker push ${ECR_REGISTRY}/${ECR_REPOSITORY}:$IMG_TAG

