#!/bin/bash
#Author: wallace
#Time:2020-10-27 16:02:30
#Name:save.sh
#Version:V1.0
#Description:This is a production script.

tag=v0.0.1
images=(volcanosh/vc-webhook-manager:$tag volcanosh/vc-scheduler:$tag volcanosh/vc-controller-manager:$tag)
path=/home/bifeng.peng/00_storage_server/harbor

for image in ${images[@]}
do
    new_image=$(sed 's|/|@|g' <<< $image)
    echo $new_image
    echo "docker save $image > $path/$image.tar"
    docker save $image > $new_image.tar
done
