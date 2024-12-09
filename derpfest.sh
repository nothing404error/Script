#!/bin/bash

# Initialize ROM manifest
repo init -u https://github.com/DerpFest-AOSP/manifest.git -b 13
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_citrus.git --depth 1 -b thirteen device/xiaomi/citrus
git clone https://github.com/nothing-sus-2/device_xiaomi_sm6115-common.git  --depth 1 -b thirteen device/xiaomi/sm6115-common
# kernel tree
git clone https://github.com/nnippon99/kernel_xiaomi_chime.git --depth 1 -b viola-ksu kernel/xiaomi/sm6115
# vendor tree
git clone https://github.com/Night-Raids-Reborn/vendor_xiaomi_citrus.git --depth 1 -b thirteen vendor/xiaomi/citrus
git clone https://github.com/Night-Raids-Reborn/vendor_xiaomi_sm6115-common.git --depth 1 -b thirteen vendor/xiaomi/sm6115-common
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
