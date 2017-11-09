#!/bin/sh

sh ./assure_curl.sh

scala_version=2.12.4
install_dir=/usr/share/scala-$scala_version

mkdir -p $install_dir
curl -fsL https://downloads.typesafe.com/scala/$scala_version/scala-$scala_version.tgz | tar xfz - -C $install_dir
echo export PATH="$install_dir/bin:\$PATH" >> $HOME/.bashrc
