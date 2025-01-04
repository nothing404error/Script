#!/bin/bash

rm -rf device/xiaomi/chime
rm -rf kernel/xiaomi/chime
rm -rf vendor/xiaomi/chime
rm -rf hardware/xiaomi
rm -rf vendor/lineage-priv/keys

# Initialize ROM manifest
repo init -u https://github.com/ArrowOS-T/android_manifest.git -b arrow-13.1_ext
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/nothing-sus-2/android_device_xiaomi_chime.git --depth 1 -b 13.0 device/xiaomi/chime
# kernel tree
git clone https://github.com/Joe7500/kernel_xiaomi_chime.git --depth 1 -b ksu kernel/xiaomi/chime
# vendor tree
git clone https://github.com/Joe7500/android_vendor_xiaomi_chime.git --depth 1 -b 13.0 vendor/xiaomi/chime
# hardware tree
git clone https://github.com/asterixiverz/hardware_xiaomi.git --depth 1 -b thirteen-aosp hardware/xiaomi

#signing
git clone https://github.com/Rv-Trees/vendor_lineage-priv_keys.git -b orion vendor/lineage-priv/keys

#misc
rm -rf packages/apps/Launcher3
git clone https://github.com/nothing-sus-2/android_packages_apps_Launcher3.git -b arrow-13.1 packages/apps/Launcher3

git clone https://github.com/nothing-sus-2/packages_apps_ViPER4AndroidFX.git -b v4a packages/apps/ViPER4AndroidFX

git clone https://gitlab.com/ThankYouMario/proprietary_vendor_xiaomi_camera.git -b uvite-sm6225 vendor/xiaomi/camera

# set build environment
. build/envsetup.sh
#Preparing device
lunch arrow_chime-user
# lunch
m bacon
