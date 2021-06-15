#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install some common tools for further installation"
apt-get update 
apt install git-core gperf bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc libc6-dev-i386 x11proto-core-dev libx11-dev libgl1-mesa-dev zip unzip zlib1g-dev -y
apt-get install -y vim wget net-tools locales bzip2 \
    python-numpy #used for websockify/novnc
#apt-get -y install git gcc curl make libxml2-utils flex m4 openjdk-8-jdk lib32stdc++6 libelf-dev libssl-dev python-enum34 python-mako syslinux-utils software-properties-common
apt-get clean -y

echo "generate locales für en_US.UTF-8"
locale-gen en_US.UTF-8

