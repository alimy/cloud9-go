# ------------------------------------------------------------------------------
# Based on a work at https://github.com/docker/docker.
# ------------------------------------------------------------------------------
# Pull base image.
FROM kdelfour/cloud9-docker
MAINTAINER Micheal Li <bitriory@gmail.com>

# ------------------------------------------------------------------------------
# Add Golang archive
ADD conf/go1.7.4.linux-amd64.tar.gz /opt/

# ------------------------------------------------------------------------------
# Config Golang enviroment
ENV GOROOT /opt/go
ENV GOPATH /workspace
ENV PATH   $GOROOT/bin:$GOPATH/bin:$PATH
