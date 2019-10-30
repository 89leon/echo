#!/bin/bash
if [[ ${GIT_BRANCH} == "master" ]]; then
   sudo gcloud docker push gcr.io/echo123/echoapp:0.1."${BUILD_NUMBER}"
fi
if [[ ${GIT_BRANCH} == "dev" ]]; then
   gcloud docker push gcr.io/echo123/echoapp:dev-"${GIT_COMMIT}"
fi
if [[ ${GIT_BRANCH} == "staging" ]]; then
   gcloud docker push gcr.io/echo123/echoapp:staging-"${GIT_COMMIT}"
fi