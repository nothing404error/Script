#!/bin/bash

rm -rf device/xiaomi/chime
rm -rf vendor/xiaomi/chime
rm -rf kernel/xiaomi/chime
# Rom source repo
repo init -u https://github.com/nothing404error/android.git -b lineage-22.2 --git-lfs

# Sync the repositories
/opt/crave/resync.sh

# Clone Device trees
git clone https://github.com/nothing404error/device_xiaomi_chime.git -b lineage-22.2 --depth 1 device/xiaomi/chime
git clone https://github.com/Joe7500/vendor_xiaomi_chime.git -b lineage-22.2 --depth 1 vendor/xiaomi/chime
git clone https://github.com/Joe7500/kernel_xiaomi_chime.git -b ksu --depth 1 kernel/xiaomi/chime

#Hardware trees
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-22.2 hardware/xiaomi

#misc
rm -rf packages/apps/Launcher3
git clone https://github.com/nothing404error/android_packages_apps_Launcher3.git -b lineage-22.2 packages/apps/Launcher3

# Set up build environment
source build/envsetup.sh
source build/envsetup.sh
# Lunch
axion chime user gms pico
mka installclean
# Build rom
ax -b user
