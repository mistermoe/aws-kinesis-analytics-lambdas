#! /bin/bash

CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker build --no-cache \
    -f ${CWD}/Dockerfile \
    -t 893445720768.dkr.ecr.us-east-1.amazonaws.com/kintest:2021.28.07-1 \
    ${CWD}

# docker push 893445720768.dkr.ecr.us-east-1.amazonaws.com/kintest:2021.28.07-1

