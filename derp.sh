#!/bin/bash

rm -rf device/xiaomi/chime
rm -rf kernel/xiaomi/chime
rm -rf vendor/xiaomi/chime

# Initialize ROM manifest
repo init -u https://github.com/DerpFest-AOSP/manifest.git -b 13
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_chime.git --depth 1 -b 13_test device/xiaomi/chime
# kernel tree
git clone https://github.com/hac4us06/Kernel-xiaomi-chime-grass.git --depth 1 -b grass-ksu kernel/xiaomi/chime
# vendor tree
git clone https://github.com/nothing-sus-2/vendor_xiaomi_chime.git --depth 1 -b 13 vendor/xiaomi/chime

#misc
rm -rf packages/apps/DerpLauncher
git clone https://github.com/nothing-sus-2/packages_apps_DerpLauncher.git -b 13 packages/apps/DerpLauncher
rm -rf frameworks/base
git clone https://github.com/GhostMaster69-dev/frameworks_base.git -b 13 frameworks/base

# set build environment
. build/envsetup.sh
#Preparing device
lunch derp_citrus-user
# lunch
mka derp
