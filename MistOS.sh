#!/bin/bash

rm -rf device/xiaomi/chime
rm -rf kernel/xiaomi/chime
rm -rf vendor/xiaomi/chime
rm -rf hardware/xiaomi

# Initialize ROM manifest
repo init -u https://github.com/Project-Mist-OS/manifest -b 15 --git-lfs
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_chime.git --depth 1 -b lineage-22.1 device/xiaomi/chime
# kernel tree
git clone https://github.com/Joe7500/kernel_xiaomi_chime.git --depth 1 -b ksu kernel/xiaomi/chime
# vendor tree
git clone https://github.com/Joe7500/vendor_xiaomi_chime.git --depth 1 -b lineage-22 vendor/xiaomi/chime
# hardware tree
git clone https://github.com/LineageOS/android_hardware_xiaomi.git --depth 1 -b lineage-22.1 hardware/xiaomi

#signing
git clone https://github.com/asterixiverz/vendor_sign.git -b pixelage vendor/lineage-priv/keys


# set build environment
. build/envsetup.sh
#Preparing device
mistify chime user
# lunch
mist b
