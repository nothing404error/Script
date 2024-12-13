#!/bin/bash

rm -rf device/xiaomi/citrus
rm -rf device/xiaomi/sm6115-common
rm -rf kernel/xiaomi/electro
rm -rf vendor/xiaomi/citrus
rm -rf vendor/xiaomi/sm6115-common
rm -rf hardware/xiaomi
rm -rf vendor/lineage-priv/keys

# Initialize ROM manifest
  repo init -u https://github.com/Ethereal-OS/Manifest -b A13 --git-lfs
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_citrus.git --depth 1 -b 13 device/xiaomi/citrus
git clone https://github.com/nothing-sus-2/device_xiaomi_sm6115-common.git --depth -b thirteen device/xiaomi/sm6115-common
# kernel tree
git clone https://github.com/hac4us06/kernel-xiaomi-electro.git --depth 1 -b 14 kernel/xiaomi/electro
# vendor tree
git clone https://github.com/Night-Raids-Reborn/vendor_xiaomi_citrus.git --depth 1 -b thirteen vendor/xiaomi/citrus
git clone https://github.com/Night-Raids-Reborn/vendor_xiaomi_sm6115-common.git --depth 1 -b thirteen vendor/xiaomi/sm6115-common
# hardware tree
git clone https://github.com/asterixiverz/hardware_xiaomi.git --depth 1 -b thirteen-aosp hardware/xiaomi

#signing
git clone https://github.com/Rv-Trees/vendor_lineage-priv_keys.git -b orion vendor/lineage-priv/keys

# set build environment
. build/envsetup.sh
#Preparing device
lunch ethreal_citrus-user
# lunch
make ethereal
