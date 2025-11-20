#!/bin/bash

rm -rf device/xiaomi/chime
rm -rf vendor/xiaomi/chime
rm -rf kernel/xiaomi/chime
# Rom source repo
repo init -u https://github.com/Arrow-OS-Extended/android_manifest.git -b arrow-13.1 --git-lfs

# Sync the repositories
/opt/crave/resync.sh

# Clone Device trees
git clone https://github.com/nothing404error/device_xiaomi_chime16.git -b test --depth 1 device/xiaomi/chime
git clone https://github.com/Joe7500/vendor_xiaomi_chime.git -b lineage-20 --depth 1 vendor/xiaomi/chime
git clone https://github.com/Joe7500/kernel_xiaomi_chime.git kernel/xiaomi/chime

#Hardware trees
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi


# set build environment
. build/envsetup.sh
#Preparing device
lunch arrow_chime-user
# lunch
m bacon
