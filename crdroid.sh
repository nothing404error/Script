#!/bin/bash

# Initialize ROM manifest
repo init -u https://github.com/crDroid11/android.git -b 11.0 --git-lfs
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/android_device_xiaomi_chime.git --depth 1 -b 11.0 device/xiaomi/chime
# kernel tree
git clone https://github.com/Joe7500/kernel_xiaomi_chime.git --depth 1 -b main kernel/xiaomi/chime
# vendor tree
git clone https://github.com/Night-Raids-Reborn/vendor_xiaomi_chime-r.git --depth 1 -b eleven vendor/xiaomi/chime


# set build environment
. build/envsetup.sh
#Preparing device
lunch lineage_chime-userdebug
# lunch
brunch chime
