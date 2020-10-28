
BIN_DIR=_output/bin
RELEASE_DIR=_output/release
REL_OSARCH_ROOT=linux/
IMAGE_PREFIX=volcanosh/vc
IMAGE_HUB=harbor.sigsus.cn:8443
TAG=v0.0.1-arm64

        for name in controller-manager scheduler webhook-manager; do\

                docker tag $IMAGE_PREFIX-$name:$TAG $IMAGE_HUB/$IMAGE_PREFIX-$name:$TAG; \
                docker push $IMAGE_HUB/$IMAGE_PREFIX-$name:$TAG; \
        done
