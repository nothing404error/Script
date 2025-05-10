#!/bin/bash

# Initialize ROM manifest
repo init -u https://github.com/DerpFest-LOS/android_manifest.git -b 15.2 --git-lfs
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_chime15.git --depth 1 -b derp device/xiaomi/chime
# kernel tree
git clone https://github.com/nnippon99/kernel_xiaomi_chime.git --depth 1 -b viola-ksu kernel/xiaomi/chime
# vendor tree
git clone https://gitlab.com/nnippon99/vendor_xiaomi_chime.git --depth 1 -b viola vendor/xiaomi/chime
git clone https://gitlab.com/nnippon99/vendor_xiaomi_citrus.git --depth 1 -b viola vendor/xiaomi/citrus
git clone https://gitlab.com/nnippon99/vendor_xiaomi_lime.git --depth 1 -b viola vendor/xiaomi/lime

#hardware tree
git clone https://github.com/LineageOS/android_hardware_xiaomi.git --depth 1 -b lineage-22.2 hardware/xiaomi

# set build environment
. build/envsetup.sh
#Preparing device
lunch lineage_citrus-userdebug
# lunch
mka bacon
