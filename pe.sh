#!/bin/bash

# Initialize ROM manifest
repo init -u https://github.com/pe-13/manifest.git -b thirteen-plus --git-lfs
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_chime2.git --depth 1  device/xiaomi/chime
# kernel tree
git clone https://github.com/nnippon99/kernel_xiaomi_chime.git --depth 1 -b viola-ksu kernel/xiaomi/chime
# vendor tree
git clone https://github.com/PixelExperience-Blobs/vendor_xiaomi_chime-perf.git --depth 1  vendor/xiaomi/chime-perf
git clone https://gitlab.com/halcyonproject/blobs/vendor_xiaomi_chime.git -depth 1 -b tithonia vendor/xiaomi/chime
git clone https://gitlab.com/halcyonproject/blobs/vendor_xiaomi_citrus.git -depth 1 -b tithonia vendor/xiaomi/citrus
git clone https://gitlab.com/halcyonproject/blobs/vendor_xiaomi_lime.git -depth 1 -b tithonia vendor/xiaomi/lime


# set build environment
. build/envsetup.sh
#Preparing device
lunch aosp_citrus-user
# lunch
m bacon
