#!/bin/bash

# Initialize ROM manifest
repo init -u https://github.com/Arrow-OS-Extended/android_manifest.git -b arrow-13.1 --git-lfs
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_chime.git --depth 1 -b ArrowOS device/xiaomi/chime
# kernel tree
git clone https://github.com/nnippon99/kernel_xiaomi_chime.git --depth 1 -b viola kernel/xiaomi/chime
# vendor tree
git clone https://github.com/nothing-sus-2/vendor_xiaomi_chime.git --depth 1 vendor/xiaomi/chime

#hardware tree
git clone https://github.com/asterixiverz/hardware_xiaomi.git --depth 1 hardware/xiaomi

# set build environment
. build/envsetup.sh
#Preparing device
lunch arrow_chime-user
# lunch
m bacon
