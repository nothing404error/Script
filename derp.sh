#!/bin/bash

# Initialize ROM manifest
repo init -u https://github.com/DerpFest-AOSP/manifest.git -b 13
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_citrus.git --depth 1 device/xiaomi/citrus
git clone https://github.com/nothing-sus-2/device_xiaomi_sm6115-common.git device/xiaomi/sm6115-common
# kernel tree
git clone https://github.com/greenforce-project/kernel_xiaomi_citrus_sm6115.git --depth 1 kernel/xiaomi/sm6115
# vendor tree
git clone https://github.com/nothing-sus-2/vendor_xiaomi_sm6115-common.git --depth 1 vendor/xiaomi/sm6115-common

git clone https://github.com/Night-Raids-Reborn/vendor_xiaomi_citrus.git vendor/xiaomi/citrus
#hardware tree

# set build environment
. build/envsetup.sh
#Preparing device
lunch derp_citrus-user
# lunch
mka derp
