#
# various snippets for kitchen usage
#


#
# dd iso image
# just for remember, always forget it
dd bs=4M if=/path/to/archlinux.iso of=/dev/sdx status=progress && sync

sudo apt install mc geany synaptic 
# controlling battery charging limits
sudo apt install tp-smapi-dkms
sudo modprobe tp_smapi
# getting info
sudo mc
cat /sys/devices/platform/smapi/BAT0/cycle_count
echo 50 > /sys/devices/platform/smapi/BAT0/start_charge_thresh
echo 80 > /sys/devices/platform/smapi/BAT0/stop_charge_thresh
# is it persistent? wiki says, that we need sysfsutils for this
