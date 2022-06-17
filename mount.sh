#! /bin/bash

DEVICES=$(sudo fdisk -l)
if [[ $DEVICES = *"sdb1"* ]]; then
	sudo mount /dev/sdb1 ~/usb-drive/
	echo "USB DRIVE MOUNTED SUCCESSFULLY"
elif [[ $DEVICES = *"sdb2"* ]]; then
	sudo mount /dev/sdb2 ~/usb-drive/
	echo "USB DRIVE MOUNTED SUCCESSFULLY"
elif [[ $DEVICES = *"sdb3"* ]]; then
	sudo mount /dev/sdb3 ~/usb-drive/
	echo "USB DRIVE MOUNTED SUCCESSFULLY"
elif [[ $DEVICES = *"sdc1"* ]]; then
	sudo mount /dev/sdc1 ~/usb-drive/
	echo "USB DRIVE MOUNTED SUCCESSFULLY"
elif [[ $DEVICES = *"sdc2"* ]]; then
	sudo mount /dev/sdc2 ~/usb-drive/
	echo "USB DRIVE MOUNTED SUCCESSFULLY"
elif [[ $DEVICES = *"sdc3"* ]]; then
	sudo mount /dev/sdc3 ~/usb-drive/
	echo "USB DRIVE MOUNTED SUCCESSFULLY"
fi
