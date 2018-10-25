#!/bin/ksh
echo "Please make sure to run this script as root. Some packages need to be installed."
echo ""
sleep 5
pkg_add -iv firefox
pkg_add -iv thunderbird
pkg_add -iv libreoffice
pkg_add -iv vlc
echo ""
echo "If you need, you can also install \"keepassxc\", sometimes it\'s handy to have a good password manager."