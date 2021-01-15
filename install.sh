#!/usr/bin/env sh
for f in *; do
    test ! -d "$f" && continue
    test -f "$f/NOAUTO" -a "$1 != -u" && \
        echo "SKIPPING $f DUE TO NOAUTO" && \
        echo "Run with -u flag to install" &&\
        echo "----------------" &&\
        continue

    echo "INSTALLING $f"
    echo "----------------"
    "./$f/install.sh"
    echo "----------------"
done

