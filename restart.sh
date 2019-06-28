#!/bin/bash
WANTOS=$1

if [[ -z $WANTOS ]]; then
  echo Usage: ./reboot-into.sh osname
  exit 2
fi

gvfs-mount -d /dev/mmcblk0p2
cd /media/$(whoami)/berryboot/images
IMGNAME=$(ls *.img* | grep -i $WANTOS | head -1)

if [[ -z $IMGNAME ]]; then
  echo OS not found. Available images:
  ls *.img*
  cd
  gvfs-mount -u /media/$(whoami)/berryboot
  exit 3
fi

echo $IMGNAME | sudo tee ../data/runonce

echo -n 'Rebooting into '$IMGNAME' '
for I in $(seq 5); do sleep 1; echo -n .; done

cd
gvfs-mount -u /media/$(whoami)/berryboot
sudo shutdown -r now
