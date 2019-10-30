#!/bin/bash
if [[ ${GIT_BRANCH} == "master" ]]; then
    sudo docker tag echoapp:latest echoapp:1.0."${BUILD_NUMBER}"
fi
if [[ ${GIT_BRANCH} == "dev" ]]; then
    sudo docker tag echoapp:latest echoapp:dev-"${GIT_COMMIT}"
fi
if [[ ${GIT_BRANCH} == "staging" ]]; then
    sudo docker tag echoapp:latest echoapp:staging-"${GIT_COMMIT}"
fi