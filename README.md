# shellinabox-alpine
ShellInABox Dockerfiles for minimal image based on Alpine Linux 

## What?
[ShellInABox](https://github.com/shellinabox/shellinabox) is a web-based terminal with which you can connect to a shell
in a web browser.

## Why?
I found the existing images for shellinabox too large. Most were based on some variation of Ubuntu or Debian linux 
and that installs way too many files and greatly increases the attack surface of any particular Docker image. To make
this image as small as possible I took [sukramlitt/docker-shellinabox](https://github.com/sukramlitt/docker-shellinabox) and 
rebased it on [Alpine Linux](http://www.alpinelinux.org/), a minimal Linux distribution with 
[Busybox](http://www.busybox.net/) that looks like it was made for Docker.

## How to build
1. Use Dockerfile.build to build the shellinabox binary inside an Alpine Linux container
2. Run the resulting container to obtain a tar.gz file with shellinabox files inside
3. Build a new docker image based on a clean Alpine Linux image and install shellinabox

You can use the included build.sh script for how to build the image. After the build you can delete 
the gerco/shellinabox-alpine-build image as it is no longer needed.

## How to use
By default, this image will connect to a shell inside a Docker container with almost no tools installed. Since
this isn't particularly useful, you may want to consider building a new image based on this one that connects
to an SSH host instead. See the included Dockerfile.ssh for how to do this.
