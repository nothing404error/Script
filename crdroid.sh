#!/bin/bash

rm -rf device/xiaomi/juice
rm -rf kernel/xiaomi/juice
rm -rf vendor/xiaomi/juice
rm -rf hardware/xiaomi

# Initialize ROM manifest
repo init -u https://github.com/crdroid-security/android.git -b 11.0 --git-lfs
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/GtrCraft/device_xiaomi_juice.git --depth 1 -b 11.0 device/xiaomi/juice
# kernel tree
git clone https://github.com/Joe7500/kernel_xiaomi_chime.git --depth 1 -b ksu kernel/xiaomi/juice
# vendor tree
git clone https://github.com/GtrCraft/vendor_xiaomi_juice.git --depth 1 -b 11.0 vendor/xiaomi/juice
# hardware tree
git clone https://github.com/crdroidandroid/android_hardware_xiaomi.git --depth 1 -b 11.0 hardware/xiaomi



# set build environment
. build/envsetup.sh
#Preparing device
lunch lineage_juice-user
# lunch
brunch juice
