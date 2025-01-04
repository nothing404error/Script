#!/bin/bash

rm -rf device/xiaomi/chime
rm -rf kernel/xiaomi/chime
rm -rf vendor/xiaomi/chime
rm -rf hardware/xiaomi
rm -rf vendor/xiaomi/camera
rm -rf vendor/lineage-priv/keys

# Initialize ROM manifest
repo init -u https://github.com/ArrowOS-T/android_manifest.git -b arrow-13.1_ext
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_chime1.git --depth 1 -b 13 device/xiaomi/chime
# kernel tree
git clone https://github.com/hac4us06/kernel-xiaomi-electro.git --depth 1 -b 14 kernel/xiaomi/chime
# vendor tree
git clone https://github.com/hac4us06/vendor_xiaomi_chime.git --depth 1 -b 13 vendor/xiaomi/chime
# hardware tree
git clone https://github.com/asterixiverz/hardware_xiaomi.git --depth 1 -b thirteen-aosp hardware/xiaomi

#signing
git clone https://github.com/Rv-Trees/vendor_lineage-priv_keys.git -b orion vendor/lineage-priv/keys

# set build environment
. build/envsetup.sh
#Preparing device
lunch arrow_chime-user
# lunch
m bacon
