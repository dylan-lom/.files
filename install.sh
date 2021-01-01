#!/usr/bin/env sh
for f in *; do
    test ! -d "$f" && continue
    echo "INSTALLING $f"
    echo "----------------"
    "./$f/install.sh"
    echo "----------------"
done
