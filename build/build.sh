#!/bin/sh

cd ${GOPATH}/src/volcano.sh/volcano/

make clean
export PATH=$GOPATH/bin:$PATH
export GO111MODULE=off
export GOMOD=""
export GIT_SSL_NO_VERIFY=1

make image_bins
make pushimages
make generate-yaml
mkdir _output/DockFile/

docker save -o _output/DockFile/vc-webhook-manager-base.tar.gz volcanosh/vc-webhook-manager-base
docker save -o _output/DockFile/vc-webhook-manager.tar.gz volcanosh/vc-webhook-manager
docker save -o _output/DockFile/vc-controller-manager.tar.gz volcanosh/vc-controller-manager
docker save -o _output/DockFile/vc-vc-scheduler.tar.gz volcanosh/vc-scheduler
