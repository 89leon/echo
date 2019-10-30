#!/bin/bash
if [[ ${GIT_BRANCH} == "master" ]]; then
    echo 'master'
    sudo docker tag gcr.io/echo123/echoapp:latest echoapp:0.1."${BUILD_NUMBER}"
fi
if [[ ${GIT_BRANCH} == "dev" ]]; then
    sudo docker tag gcr.io/echo123/echoapp:latest echoapp:dev-"${GIT_COMMIT}"
fi
if [[ ${GIT_BRANCH} == "staging" ]]; then
    sudo docker tag gcr.io/echo123/echoapp:latest echoapp:staging-"${GIT_COMMIT}"
fi