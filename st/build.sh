#!/bin/sh
#
# download, patch and build st 0.8.2

if [ -d 'st-0.8.2' ]; then
    echo 'Existing st build folder found! (./st-0.8.2)'
    read -p 'Continuing will delete this folder' readresult
    rm -r 'st-0.8.2'
fi

echo 'Fetching st-0.8.2'
curl -sO https://dl.suckless.org/st/st-0.8.2.tar.gz
tar -xzf st-*.tar.gz && cd st-0.8.2

echo 'Installing patch st-patch-clipboard'
curl -so st-patch-clipboard.diff https://st.suckless.org/patches/clipboard/st-clipboard-0.8.2.diff
patch < st-patch-clipboard.diff

# curl -o st-patch-xresources.diff https://st.suckless.org/patches/xresources/st-xresources-20190105-3be4cf1.diff
# patch < st-patch-xresources.diff

echo 'Installing patch st-patch-bold-not-bright'
curl -so st-patch-bold-not-bright.diff https://st.suckless.org/patches/bold-is-not-bright/st-bold-is-not-bright-20190127-3be4cf1.diff
patch < st-patch-bold-not-bright.diff

echo 'Installing patch st-patch-scrollback'
# curl -so st-patch-scrollback.diff https://st.suckless.org/patches/scrollback/st-scrollback-0.8.2.diff
# patch < st-patch-scrollback.diff
patch < ../st-patch-scrollback.diff

echo 'Installing patch st-patch-scrollback-mouse'
curl -so st-patch-scrollback-mouse.diff https://st.suckless.org/patches/scrollback/st-scrollback-mouse-0.8.2.diff
patch < st-patch-scrollback-mouse.diff

echo 'Installing patch st-patch-scrollback-mouse-increment'
curl -so st-patch-scrollback-mouse-increment.diff https://st.suckless.org/patches/scrollback/st-scrollback-mouse-increment-0.8.2.diff
patch < st-patch-scrollback-mouse-increment.diff

# patch < ../../st-patch-sane-xresources.diff

make config.h

echo 'Installing patch ../config.h.diff'
patch < ../config.h.diff

if $(uname -a | grep -i debian >/dev/null 2>&1); then
	echo 'Installing st build dependancies'
	sudo apt install libx11-dev x11proto-dev libxft-dev
fi

make
sudo make install
