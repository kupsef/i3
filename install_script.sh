#!/usr/bin/env bash

set -o pipefail
set -o errexit
set -o nounset

apt install -y \
    autoconf \
    libx11-dev \
    libxcb-util0-dev \
    libxcb-keysyms1-dev \
    libxcb-xinerama0-dev \
    libxcb-randr0-dev \
    libxcb-icccm4-dev \
    libxcb-cursor-dev \
    libxcb-xrm-dev \
    libxcb-xkb-dev \
    libxkbcommon-dev \
    libxkbcommon-x11-dev \
    asciidoc \
    xmlto \
    docbook-xml \
    pkg-config \
    libev-dev \
    libyajl-dev \
    libpcre3-dev \
    libstartup-notification0-dev \
    libcairo2-dev \
    libpango1.0-dev \
    libpod-simple-perl

autoreconf -fi
./configure

(cd x86_64-pc-linux-gnu && make -j8)
(cd x86_64-pc-linux-gnu && make install)
