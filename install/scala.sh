#!/bin/sh

if [ -e /etc/alpine-release ]; then
    which curl >> /dev/null 2>&1 || apk add --no-cache curl
fi

scala_version=${1}
install_dir=/usr/share/scala-$scala_version

mkdir -p $install_dir
curl -fsL https://downloads.typesafe.com/scala/$scala_version/scala-$scala_version.tgz | tar xfz - -C $install_dir
echo export PATH="$install_dir/bin:\$PATH" >> $HOME/.bashrc
