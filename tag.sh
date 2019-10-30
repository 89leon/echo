#!/bin/bash
if [[ ${GIT_BRANCH} == "master" ]]; then
    echo 'master'
    docker tag gcr.io/echo123/echoapp:latest gcr.io/echo123/echoapp:0.1."${BUILD_NUMBER}"
fi
if [[ ${GIT_BRANCH} == "dev" ]]; then
    docker tag gcr.io/echo123/echoapp:latest gcr.io/echo123/echoapp:dev-"${GIT_COMMIT}"
fi
if [[ ${GIT_BRANCH} == "staging" ]]; then
    docker tag gcr.io/echo123/echoapp:latest gcr.io/echo123/echoapp:staging-"${GIT_COMMIT}"
fi