#!/bin/bash

rm -rf device/xiaomi/chime
rm -rf kernel/xiaomi/chime
rm -rf vendor/xiaomi/chime
rm -rf hardware/xiaomi
rm -rf vendor/xiaomi/camera
rm -rf vendor/lineage-priv/keys

# Initialize ROM manifest
repo init -u https://github.com/DerpFest-AOSP/manifest.git -b 13
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_chime1.git --depth 1 -b 13 device/xiaomi/chime
# kernel tree
git clone https://github.com/nnippon99/kernel_xiaomi_chime.git --depth 1 -b viola-ksu kernel/xiaomi/chime
# vendor tree
git clone https://github.com/hac4us06/vendor_xiaomi_chime.git --depth 1 -b 13 vendor/xiaomi/chime
# hardware tree
git clone https://github.com/asterixiverz/hardware_xiaomi.git --depth 1 -b thirteen-aosp hardware/xiaomi

#miui camera
git clone https://gitlab.com/ThankYouMario/proprietary_vendor_xiaomi_camera.git --depth 1 -b uvite-sm6225 vendor/xiaomi/camera

#signing
git clone https://github.com/Rv-Trees/vendor_lineage-priv_keys.git -b orion vendor/lineage-priv/keys

# set build environment
. build/envsetup.sh
#Preparing device
lunch derp_citrus-user
# lunch
mka derp
