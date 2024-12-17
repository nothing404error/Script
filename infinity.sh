#!/bin/bash

rm -rf device/xiaomi/chime
rm -rf kernel/xiaomi/chime
rm -rf vendor/xiaomi/chime


# Initialize ROM manifest
repo init --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b 15 -g default,-mips,-darwin,-notdefault
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_chime2.git --depth 1 -b infinity15 device/xiaomi/chime
# kernel tree
git clone https://github.com/nnippon99/kernel_xiaomi_chime.git --depth 1 -b viola-ksu kernel/xiaomi/chime
# vendor tree
git clone https://github.com/hac4us06/vendor_xiaomi_chime.git --depth 1 -b 14 vendor/xiaomi/chime

#extras
rm -rf hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi.git --depth 1 -b lineage-22.0 hardware/xiaomi
#signing
git clone https://github.com/ProjectInfinity-X/vendor_infinity-priv_keys-template vendor/infinity-priv/keys
cd vendor/infinity-priv/keys
./keys.sh
cd -

#lunch
. build/envsetup.sh
lunch infinity_citrus-userdebug
mka bacon
