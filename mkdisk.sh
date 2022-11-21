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

sudo mkfs.ext4 $11 -L host -F
sudo mkfs.ext4 $12 -L agl-cluster -F
sudo mkfs.ext4 $13 -L agl-momi-ivi -F
sudo mkfs.ext4 $14 -L agl-qt-ivi -F
sudo mkfs.ext4 $15 -L agl-flutter-ivi -F
sudo mkfs.ext4 $16 -L agl-html5-ivi -F
sudo mkfs.ext4 $17 -L agl-other -F
sudo mkfs.ext4 $18 -L nvhost -F
sudo mkfs.ext4 $19 -L nv-cluster -F
sudo mkfs.ext4 $110 -L nv-momi-ivi -F
sudo mkfs.ext4 $111 -L nv-qt-ivi -F
sudo mkfs.ext4 $112 -L nv-flutter-ivi -F
sudo mkfs.ext4 $113 -L nv-html5-ivi -F
sudo mkfs.ext4 $114 -L nv-other -F

