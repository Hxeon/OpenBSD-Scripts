#!/bin/ksh
echo "Please make sure to run this script as root. Some packages need to be installed."
echo ""
sleep 5
pkg_add -iv xfce
pkg_add -iv slim slim-themes
pkg_add -iv curl transmission-qt
touch /home/$USER/.xinitrc
echo "exec startxfce4" > ~/.xinitrc
touch /etc/rc.local
echo "/usr/local/bin/slim -d" >> /etc/rc.local
touch /etc/rc.conf.local
echo "pkg_scripts=\"dbus_daemon avahi_daemon\"" >> /etc/rc.conf.local
echo "dbus_enable=YES" >> /etc/rc.conf.local
echo ""
echo "OpenBSD Configuration complete. Use the \"Extras script\" to install other features quickly."