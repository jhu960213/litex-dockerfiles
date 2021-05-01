# get parent base image ubuntu
FROM ubuntu:20.04

# install required packages for building litex
RUN apt-get -y update && \
    apt-get install -y \
        git \
        python3 \
        python3-setuptools \
        wget \
        tar \
        automake \
        autoconf \
        make \
	verilator \
        gzip && \
    rm -rf /var/lib/apt/lists/*
