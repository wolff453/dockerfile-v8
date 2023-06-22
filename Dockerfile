FROM debian:stable-slim as builder

ARG V8_VERSION=latest

RUN apt-get update && apt-get upgrade -yqq

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install bison \
                    cdbs \
                    curl \
                    flex \
                    g++ \
                    lldb \
                    git \
                    python \
                    vim \
                    pkg-config -yqq

RUN git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git

ENV PATH="/depot_tools:${PATH}"

RUN fetch v8

WORKDIR /v8

RUN ./tools/dev/gm.py x64.debug

 
