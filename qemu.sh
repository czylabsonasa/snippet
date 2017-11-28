# https://digitalsprouts.org/installing-windows-8-1-preview-on-linux/
sudo apt-get install qemu-kvm libvirt-bin bridge-utils ubuntu-vm-builder
# restart, 
# 17.04ubi: no libvirtd group, and nosy already added to 'libvirt' group
#sudo adduser `id -un` libvirt #adds your user to the libvirtd group

