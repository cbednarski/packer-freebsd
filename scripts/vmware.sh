# see http://www.unibia.com/unibianet/freebsd/open-vm-tools-freebsd-10-xorg
# see also /usr/local/etc/rc.d/vmware-kmod for which kernel modules are actually
#   available to be enabled
pkg install -y open-vm-tools-nox11

echo <<HERE >> /etc/rc.conf
vmware_guest_vmmemctl_enable="YES"
vmware_guest_vmxnet_enable="YES"
vmware_guest_vmblock_enable="YES"
vmware_guestd_enable="YES"
HERE
