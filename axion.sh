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
git clone https://github.com/Joe7500/vendor_xiaomi_chime.git -b lineage-22.2 --depth 1 vendor/xiaomi/chime
git clone https://github.com/nnippon99/kernel_xiaomi_chime.git -b viola --depth 1 kernel/xiaomi/chime
echo 'CONFIG_SCHED_DEBUG=y' >> kernel/xiaomi/chime/arch/arm64/configs/vendor/xiaomi/bengal_defconfig
 
# Set up build environment
source build/envsetup.sh

# Lunch
axion chime user vannila


# Build rom
ax -b user

