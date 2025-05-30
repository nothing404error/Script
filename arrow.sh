#!/bin/bash
# Initialize ROM manifest
repo init -u https://github.com/Ethereal-OS/Manifest -b A13 --git-lfs
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_chime.git --depth 1 -b ethereal device/xiaomi/chime

# set build environment
. build/envsetup.sh
#Preparing device
lunch ethereal_chime-userdebug
# lunch
make ethereal
