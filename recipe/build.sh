#!/bin/bash

set -ex

# Configure dropbear
./configure --prefix=$PREFIX \
    --disable-wtmp \
    --disable-lastlog

# Build
make -j${CPU_COUNT}

# Install
make install
