#!/bin/bash

rm -rf device/xiaomi/chime
rm -rf vendor/xiaomi/chime
rm -rf vendor/xiaomi/citrus
rm -rf vendor/xiaomi/lime
rm -rf kernel/xiaomi/chime

# Initialize ROM manifest
repo init -u https://github.com/DerpFest-LOS/android_manifest.git -b 15.2 --git-lfs
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_chime.git --depth 1 -b derp device/xiaomi/chime
# kernel tree
git clone https://github.com/Joe7500/kernel_xiaomi_chime.git --depth 1 -b ksu kernel/xiaomi/chime
# vendor tree
git clone https://github.com/Joe7500/vendor_xiaomi_chime.git --depth 1 -b lineage-22.2 vendor/xiaomi/chime

#hardware tree
git clone https://github.com/LineageOS/android_hardware_xiaomi.git --depth 1 -b lineage-22.2 hardware/xiaomi

# set build environment
. build/envsetup.sh
#Preparing device
lunch lineage_chime-bp1a-userdebug
# lunch
mka bacon
