#!/bin/bash

./configure --prefix=/home/sail/.local/ --enable-python3interp --enable-luainterp --with-features=huge

cd src
make
make install
