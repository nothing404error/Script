#!/bin/bash

# Initialize ROM manifest
repo init -u https://github.com/Project-Mist-OS/manifest -b 15 --git-lfs
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/android_device_motorola_fogos.git --depth 1 -b fifteen device/motorola/fogos
git clone https://github.com/Motorola-SM6375-Devs/android_device_motorola_sm6375-common.git --depth 1 -b fifteen device/motorola/sm6375-common
# kernel tree
git clone https://github.com/Motorola-SM6375-Devs/android_kernel_motorola_sm6375.git --depth 1 -b fifteen kernel/motorola/sm6375
# vendor tree
git clone https://gitlab.com/Motorola-SM6375-Devs/proprietary_vendor_motorola_fogos.git --depth 1 -b fifteen vendor/motorola/fogos
git clone https://gitlab.com/Motorola-SM6375-Devs/proprietary_vendor_motorola_sm6375-common.git --depth 1 -b fifteen vendor/motorola/sm6375-common
# hardware tree
rm -rf hardware/motorola
rm -rf system/qcom
git clone https://github.com/LineageOS/android_hardware_motorola.git hardware/motorola
git clone https://github.com/LineageOS/android_system_qcom.git system/qcom


# set build environment
. build/envsetup.sh
#Preparing device
mistify fogos user
# lunch
mist b
