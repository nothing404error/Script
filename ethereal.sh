#!/bin/bash

rm -rf device/xiaomi/chime
rm -rf kernel/xiaomi/chime
rm -rf vendor/xiaomi/chime


# Initialize ROM manifest
repo init -u https://github.com/VoltageOS/manifest.git -b 15 --git-lfs
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/device_xiaomi_chime2.git --depth 1 device/xiaomi/chime
# kernel tree
git clone https://github.com/nnippon99/kernel_xiaomi_chime.git --depth 1 -b viola-ksu kernel/xiaomi/chime
# vendor tree
git clone https://github.com/hac4us06/vendor_xiaomi_chime.git --depth 1 -b 14 vendor/xiaomi/chime

#extras
rm -rf hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi.git --depth 1 -b lineage-22.0 hardware/xiaomi
cd vendor/voltage/config
wget -O device_framework_matrix.xml https://raw.githubusercontent.com/LineageOS/android_vendor_lineage/refs/heads/lineage-21.0/config/device_framework_matrix.xml
cd -
#signing
git clone https://github.com/VoltageOS/vendor_voltage-priv_keys vendor/voltage-priv/keys
cd vendor/voltage-priv/keys
./keys.sh
cd -

#lunch
. build/envsetup.sh
brunch citrus
