sbt_version=${1}

# leave off "sbt" because the tar puts in the subdirectory
install_dir=/usr/share/

# sbt requires bash
if [ -e /etc/alpine-release ]; then
    which bash || apk add --no-cache bash bc
    which curl >> /dev/null 2>&1 || apk add --no-cache curl
fi

mkdir -p $install_dir
curl -L https://github.com/sbt/sbt/releases/download/v$sbt_version/sbt-$sbt_version.tgz | tar xfz - -C $install_dir
echo export PATH="$install_dir/sbt/bin:\$PATH" >> $HOME/.bashrc

# Initialize sbt
$install_dir/sbt/bin/sbt sbtVersion
