#!/bin/sh

docker build -t gerco/shellinabox-alpine-build -f Dockerfile.build .
docker run --rm gerco/shellinabox-alpine-build > shellinabox.tar.gz

docker build -t gerco/shellinabox-alpine .
