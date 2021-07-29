#!/bin/sh
#
# download, patch and build dwm 6.2

test -d build || mkdir build; cd build

curl -O https://dl.suckless.org/dwm/dwm-6.2.tar.gz
tar -xzf dwm-*.tar.gz && cd dwm-*

curl -o dwm-patch-autostart.diff https://dwm.suckless.org/patches/autostart/dwm-autostart-20161205-bb3bd6f.diff
patch < dwm-patch-autostart.diff

curl -o dwm-patch-scratchpad.diff https://dwm.suckless.org/patches/scratchpad/dwm-scratchpad-6.2.diff
patch < dwm-patch-scratchpad.diff

curl -o dwm-patch-pertag.diff https://dwm.suckless.org/patches/pertag/dwm-pertag-6.2.diff
patch < dwm-patch-pertag.diff

patch < ../../dwm-patch-xsession.diff

make config.h
patch < ../../config.h.diff

if $(uname -a | grep -i debian >/dev/null 2>&1) && confirm "Install dev dependencies?"; then
	echo '# installing dwm dependancies'
	sudo apt install libx11-dev x11proto-dev libxinerama-dev libxft-dev
fi

make
confirm "Install?" && sudo make install
