#!/bin/bash

# Initialize ROM manifest
repo init -u https://github.com/Project-Mist-OS/manifest -b 15 --git-lfs
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_motorola_fogos.git --depth 1 -b 15 device/motorola/fogos
git clone https://github.com/OptoHub/device_motorola_sm6375-common.git --depth 1 -b 15 device/motorola/sm6375-common
# kernel tree
git clone https://github.com/OptoHub/kernel_motorola_sm6375.git --depth 1 -b 15 kernel/motorola/sm6375
# vendor tree
git clone https://github.com/OptoHub/vendor_motorola_fogos.git --depth 1 -b 14 vendor/motorola/fogos
git clone https://github.com/OptoHub/vendor_motorola_sm6375-common.git --depth 1 -b 15 vendor/motorola/sm6375-common
# hardware tree
git clone https://github.com/vullk4n/hardware_motorola.git --depth 1 -b v-15.0 hardware/motorola


# set build environment
. build/envsetup.sh
#Preparing device
mistify fogos userdebug
# lunch
mist b
