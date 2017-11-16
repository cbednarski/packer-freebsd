# See https://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/virtualization-guest-virtualbox.html
echo <<HERE >> /etc/rc.conf
vboxguest_enable="YES"
vboxservice_enable="YES"
vboxservice_flags="--disable-timesync"
HERE
