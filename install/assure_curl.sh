#!/bin/sh

which curl >> /dev/null 2>&1 && exit 0

# Install curl
apk add --no-cache curl
