#!/bin/bash

rm -rf device/xiaomi/chime
rm -rf vendor/xiaomi/chime
rm -rf kernel/xiaomi/chime
# Rom source repo
repo init -u https://github.com/crdroid-13-fork/android.git -b 13.0 --git-lfs

# Sync the repositories
/opt/crave/resync.sh

# Clone Device trees
git clone https://github.com/ArrowOS-T-Fork/device_xiaomi_chime.git -b test --depth 1 device/xiaomi/chime
git clone https://github.com/nothing-sus-2/vendor_xiaomi_chime.git -b 13.0 --depth 1 vendor/xiaomi/chime
git clone https://github.com/nnippon99/kernel_xiaomi_chime.git -b viola --depth 1 kernel/xiaomi/chime

#Hardware trees
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi

#misc
rm -rf packages/apps/crDroidSettings
git clone https://github.com/nothing404error/android_packages_apps_crDroidSettings.git packages/apps/crDroidSettings
rm -rf packages/apps/Updater
git clone https://github.com/nothing404error/android_packages_apps_Updater.git packages/apps/Updater
rm -rf external/bouncycastle
git clone https://github.com/ProjectMatrixx/external_bouncycastle.git external/bouncycastle

# Set up build environment
. build/envsetup.sh

# Lunch
lunch lineage_chime-user

# Build rom
m bacon
