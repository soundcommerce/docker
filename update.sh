#!/bin/sh

set -e

sbt=`./getcmd.sh sbt.sh 1.0.3`
scala=`./getcmd.sh scala.sh 2.12.4`

cat <<EOF > slim/Dockerfile
# Slim scala build environment with sbt
FROM openjdk:8-jre-alpine

# Install sbt
RUN $sbt
EOF

cat <<EOF > slim-jdk/Dockerfile
# Full jdk on alpine with sbt
FROM openjdk:8-jdk-alpine

# Install sbt
RUN $sbt
EOF

cat <<EOF > full/Dockerfile
# Slim scala build environment with sbt
FROM openjdk:8-jdk

# Install scala
RUN $scala

# Install sbt
RUN $sbt
EOF
