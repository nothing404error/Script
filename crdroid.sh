rm -rf device/xiaomi/chime
git clone https://github.com/nothing-sus-2/device_xiaomi_chime.git -b test device/xiaomi/chime
rm -rf packages/apps/Updater
git clone https://github.com/nothing-sus-2/android_packages_apps_Updater.git -b 13.0 packages/apps/Updater
# set build environment
. build/envsetup.sh
#Preparing device
lunch lineage_chime-userdebug
# lunch
m bacon
