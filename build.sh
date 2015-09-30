#!/bin/sh

docker build -t gdries/shellinabox-alpine-build -f Dockerfile.build .
docker run --rm gdries/shellinabox-alpine-build > shellinabox.tar.gz

docker build -t gdries/shellinabox-alpine .
