#!/bin/bash

set -x

IMAGE_PREFIX=harbor.sigsus.cn:8443/volcanosh
docker tag volcanosh/vc-webhook-manager-base:1.3.1 ${IMAGE_PREFIX}/vc-webhook-manager-base:1.3.1
docker push ${IMAGE_PREFIX}/vc-webhook-manager-base:1.3.1

docker tag volcanosh/vc-webhook-manager:v0.0.1 ${IMAGE_PREFIX}/vcolcanosh/vc-webhook-manager:v0.0.1
docker push ${IMAGE_PREFIX}/vcolcanosh/vc-webhook-manager:v0.0.1

docker tag volcanosh/vc-controller-manager:v0.0.1 ${IMAGE_PREFIX}/vcolcanosh/vc-controller-manager:v0.0.1
docker push ${IMAGE_PREFIX}/vcolcanosh/vc-controller-manager:v0.0.1

docker tag volcanosh/vc-scheduler:v0.0.1 ${IMAGE_PREFIX}/vc-scheduler:v0.0.1
docker push ${IMAGE_PREFIX}/vc-scheduler:v0.0.1

