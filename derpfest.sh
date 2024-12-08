#!/bin/bash

# Initialize ROM manifest
repo init -u https://github.com/DerpFest-AOSP/manifest.git -b 13
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/Night-Raids-Reborn/device_xiaomi_citrus.git --depth 1 -b thirteen device/xiaomi/citrus
git clone https://github.com/nothing-sus-2/device_xiaomi_sm6115-common.git  --depth 1 -b thirteen device/xiaomi/sm6115-common
# kernel tree
git clone https://github.com/greenforce-project/kernel_xiaomi_citrus_sm6115.git --depth 1 -b 13.0.0-perf kernel/xiaomi/sm6115
# vendor tree
git clone https://github.com/Night-Raids-Reborn/vendor_xiaomi_citrus.git --depth 1 -b thirteen vendor/xiaomi/citrus
git clone https://github.com/Night-Raids-Reborn/vendor_xiaomi_sm6115-common.git --depth 1 -b thirteen vendor/xiaomi/sm6115-common
# hardware tree
git clone https://github.com/asterixiverz/hardware_xiaomi.git --depth 1 -b thirteen-aosp hardware/xiaomi
# set build environment
. build/envsetup.sh
#Preparing device
lunch derp_citrus-user
# lunch
mka derp
