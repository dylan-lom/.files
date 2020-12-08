#!/usr/bin/env sh
cd "$(dirname $0)"
(set -x;
    cp -r .vim ~/.vim
    cp .vimrc ~/.vimrc)

