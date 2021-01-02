#!/usr/bin/env sh
cd "$(dirname $0)"
(set -x;
    cp .bash_aliases ~/.bash_aliases
    cp .bash_functions ~/.bash_functions
    cp .bashrc ~/.bashrc)

