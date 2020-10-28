#!/bin/bash
#Author: wallace
#Time:2020-10-27 16:02:30
#Name:save.sh
#Version:V1.0
#Description:This is a production script.

tag=v0.0.1
default_project=volcanosh
target_project=sz_gongdianju
prefix=harbor.sigsus.cn:8443

images=(vc-webhook-manager:$tag vc-scheduler:$tag vc-controller-manager:$tag)
path=/home/bifeng.peng/00_storage_server/harbor


for image in ${images[@]}
do
    new_image=$prefix/$target_project/$image
    echo "docker tag $default_project/$image $new_image"
    docker tag $default_project/$image $new_image
    docker save $new_image > $image.tar
done
