#!/bin/bash -e

[[ "$1" =~ ^/dev/sd ]] || partition_prefix=p

sudo parted -s -a optimal $1 mklabel gpt
sudo parted -s -a optimal $1 -- mkpart primary ext4 1 2GB
sudo parted -s -a optimal $1 -- mkpart primary ext4 2GB 4GB
sudo parted -s -a optimal $1 -- mkpart primary ext4 4GB 6GB
sudo parted -s -a optimal $1 -- mkpart primary ext4 6GB 10GB
sudo parted -s -a optimal $1 -- mkpart primary ext4 10GB 14GB
sudo parted -s -a optimal $1 -- mkpart primary ext4 14GB 18GB
sudo parted -s -a optimal $1 -- mkpart primary ext4 18GB 22GB
sudo parted -s -a optimal $1 -- mkpart primary ext4 22GB 23GB
sudo parted -s -a optimal $1 -- mkpart primary ext4 23GB 24GB
sudo parted -s -a optimal $1 -- mkpart primary ext4 24GB 25GB
sudo parted -s -a optimal $1 -- mkpart primary ext4 25GB 26GB
sudo parted -s -a optimal $1 -- mkpart primary ext4 26GB 27GB
sudo parted -s -a optimal $1 -- mkpart primary ext4 27GB 28GB
sudo parted -s -a optimal $1 -- mkpart primary ext4 28GB 29GB

sudo mkfs.ext4 ${1}${partition_prefix}1 -L host -F
sudo mkfs.ext4 ${1}${partition_prefix}2 -L agl-cluster -F
sudo mkfs.ext4 ${1}${partition_prefix}3 -L agl-momi-ivi -F
sudo mkfs.ext4 ${1}${partition_prefix}4 -L agl-qt-ivi -F
sudo mkfs.ext4 ${1}${partition_prefix}5 -L agl-flutter-ivi -F
sudo mkfs.ext4 ${1}${partition_prefix}6 -L agl-html5-ivi -F
sudo mkfs.ext4 ${1}${partition_prefix}7 -L agl-other -F
sudo mkfs.ext4 ${1}${partition_prefix}8 -L nvhost -F
sudo mkfs.ext4 ${1}${partition_prefix}9 -L nv-cluster -F
sudo mkfs.ext4 ${1}${partition_prefix}10 -L nv-momi-ivi -F
sudo mkfs.ext4 ${1}${partition_prefix}11 -L nv-qt-ivi -F
sudo mkfs.ext4 ${1}${partition_prefix}12 -L nv-flutter-ivi -F
sudo mkfs.ext4 ${1}${partition_prefix}13 -L nv-html5-ivi -F
sudo mkfs.ext4 ${1}${partition_prefix}14 -L nv-other -F

