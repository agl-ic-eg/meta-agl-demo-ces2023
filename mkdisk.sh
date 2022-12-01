#!/bin/bash -e

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

sudo mkfs.ext4 ${1}p1 -L host -F
sudo mkfs.ext4 ${1}p2 -L agl-cluster -F
sudo mkfs.ext4 ${1}p3 -L agl-momi-ivi -F
sudo mkfs.ext4 ${1}p4 -L agl-qt-ivi -F
sudo mkfs.ext4 ${1}p5 -L agl-flutter-ivi -F
sudo mkfs.ext4 ${1}p6 -L agl-html5-ivi -F
sudo mkfs.ext4 ${1}p7 -L agl-other -F
sudo mkfs.ext4 ${1}p8 -L nvhost -F
sudo mkfs.ext4 ${1}p9 -L nv-cluster -F
sudo mkfs.ext4 ${1}p10 -L nv-momi-ivi -F
sudo mkfs.ext4 ${1}p11 -L nv-qt-ivi -F
sudo mkfs.ext4 ${1}p12 -L nv-flutter-ivi -F
sudo mkfs.ext4 ${1}p13 -L nv-html5-ivi -F
sudo mkfs.ext4 ${1}p14 -L nv-other -F

