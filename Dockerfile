# get parent base image ubuntu
FROM ubuntu:20.04

# install required packages for building litex
RUN apt-get update -q && \
    apt-get install -y --no-install-recommends \
        git \
        python3 \
	build-essential \
	device-tree-compiler \
        python3-setuptools \
	libtool \
	pkg-config \
	libusb-1.0-0-dev \
        wget \
        tar \
        automake \
        autoconf \
        make \
	verilator \
	libevent-dev \
	libjson-c-dev \
        gzip && \
    rm -rf /var/lib/apt/lists/*

# install litex and other dependencies for loading bitstream to hardware
# RUN mkdir litex_toolchain && \
   # cd litex_toolchain && \
   # wget --no-check-certificate https://raw.githubusercontent.com/enjoy-digital/litex/master/litex_setup.py && \
   # python3 litex_setup.py init install && \
   # python3 litex_setup.py update && \
   # python3 litex_setup.py gcc
