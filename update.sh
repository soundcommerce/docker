#!/bin/sh

cat <<EOF > scala/Dockerfile
# Slim scala build environment with sbt
FROM openjdk:8-jre-alpine

# Install sbt
RUN `./getcmd.sh sbt.sh 1.0.3`
EOF
