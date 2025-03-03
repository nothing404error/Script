#!/bin/bash

# Initialize ROM manifest
repo init -u https://github.com/crdroidandroid/android.git -b 15.0 --git-lfs
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_chime.git --depth 1 -b lineage-22.1 device/xiaomi/chime
# kernel tree
git clone https://github.com/Joe7500/kernel_xiaomi_chime.git --depth 1 -b main kernel/xiaomi/chime
# vendor tree
git clone https://github.com/Joe7500/vendor_xiaomi_chime.git --depth 1 -b lineage-22 vendor/xiaomi/chime


# set build environment
. build/envsetup.sh
#Preparing device
lunch lineage_chime-user
# lunch
brunch chime
