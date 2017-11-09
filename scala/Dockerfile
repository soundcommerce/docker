# Slim scala build environment with sbt
FROM openjdk:8-jre-alpine as builder

# Docker command files
COPY install /build/install

WORKDIR /build

# Install scala - don't need to b/c sbt does
# RUN sh install/scala.sh

# Install sbt
RUN sh install/sbt.sh
