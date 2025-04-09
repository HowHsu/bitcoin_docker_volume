#!/bin/bash

echo "export envs"

user=$1
proj_dir=$2

if [ "$user" == "root" ]; then
	echo "user is root"
    proj_path="/root/$proj_dir"
else
	echo "user is not root"
    proj_path="/home/$user/$proj_dir"
fi

echo "cd $proj_path"
cd $proj_path

echo "start build image..."
./scripts/build_image.sh

echo "start export image..."
./scripts/export_image.sh


echo "done"
exit
