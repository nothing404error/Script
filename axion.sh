#!/bin/bash

rm -rf device/xiaomi/chime
rm -rf vendor/xiaomi/chime
rm -rf kernel/xiaomi/chime
# Rom source repo
repo init -u https://github.com/AxionAOSP/android.git -b lineage-22.2 --git-lfs

# Sync the repositories
/opt/crave/resync.sh

# Clone Device trees
 git clone https://github.com/nothing-sus-2/device_xiaomi_chime.git -b axion --depth 1 device/xiaomi/chime
git clone https://github.com/Joe7500/vendor_xiaomi_chime.git --depth 1 -b lineage-22.2 vendor/xiaomi/chime
git clone https://github.com/nnippon99/kernel_xiaomi_chime.git -b viola-ksu --depth 1 kernel/xiaomi/chime

 
# Set up build environment
source build/envsetup.sh
echo "====== Envsetup Done ======="

#sign build 
gk -s

# Lunch
axion chime userdebug va


# Build rom
ax -br

