# Slim scala build environment with sbt
FROM openjdk:8-jdk

# Install scala
RUN if [ -e /etc/alpine-release ]; then && \
    which curl >> /dev/null 2>&1 || apk add --no-cache curl && \
fi && \
scala_version=2.12.4 && \
install_dir=/usr/share/scala-$scala_version && \
mkdir -p $install_dir && \
curl -fsL https://downloads.typesafe.com/scala/$scala_version/scala-$scala_version.tgz | tar xfz - -C $install_dir && \
echo export PATH="$install_dir/bin:\$PATH" >> $HOME/.bashrc

# Install sbt
RUN sbt_version=1.0.3 && \
install_dir=/usr/share/ && \
if [ -e /etc/alpine-release ]; then && \
    which bash || apk add --no-cache bash bc && \
    which curl >> /dev/null 2>&1 || apk add --no-cache curl && \
fi && \
mkdir -p $install_dir && \
curl -L https://github.com/sbt/sbt/releases/download/v$sbt_version/sbt-$sbt_version.tgz | tar xfz - -C $install_dir && \
echo export PATH="$install_dir/sbt/bin:\$PATH" >> $HOME/.bashrc && \
$install_dir/sbt/bin/sbt sbtVersion
