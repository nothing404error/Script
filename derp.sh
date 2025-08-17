#!/bin/bash

rm -rf device/xiaomi/chime
rm -rf vendor/xiaomi/chime
rm -rf kernel/xiaomi/chime
# Rom source repo
repo init --no-repo-verify -u https://github.com/superior-lts/manifest.git -b thirteen --git-lfs -g default,-mips,-darwin,-notdefault

# Sync the repositories
/opt/crave/resync.sh

# Clone Device trees
git clone https://github.com/nothing404error/android_device_xiaomi_chime.git -b test2 --depth 1 device/xiaomi/chime
git clone https://github.com/nothing404error/android_vendor_xiaomi_chime.git -b 13.0 --depth 1 vendor/xiaomi/chime
git clone https://github.com/Joe7500/kernel_xiaomi_chime.git -b ksu --depth 1 kernel/xiaomi/chime

#Hardware trees
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi

#misc
rm -rf frameworks/base
git clone https://github.com/nothing404error/android_frameworks_base-1.git frameworks/base

# Set up build environment
. build/envsetup.sh

# Lunch
lunch superior_chime-user

# Build rom
m bacon
