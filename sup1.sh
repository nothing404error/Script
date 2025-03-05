#!/bin/bash

rm -rf device/xiaomi/chime
rm -rf kernel/xiaomi/chime
rm -rf vendor/xiaomi/chime

# Initialize ROM manifest
repo init -u https://github.com/superior-lts/manifest.git -b thirteen --depth=1
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_chime.git --depth 1 -b 13 device/xiaomi/chime
# kernel tree
git clone https://github.com/hac4us06/kernel-xiaomi-electro.git --depth 1 -b 14 kernel/xiaomi/chime
# vendor tree
git clone https://github.com/nothing-sus-2/vendor_xiaomi_chime.git --depth 1 -b 13 vendor/xiaomi/chime

rm -rf hardware/xiaomi

# set build environment
. build/envsetup.sh
#Preparing device
lunch superior_citrus-user
# lunch
m bacon
