rm -rf packages/apps/Updater
git clone https://github.com/nothing-sus-2/android_packages_apps_Updater.git packages/apps/Updater
rm -rf kernel/xiaomi/chime
git clone https://github.com/nothing-sus-2/kernel_xiaomi_chime.git -b viola kernel/xiaomi/chime
# set build environment
. build/envsetup.sh
#Preparing device
lunch arrow_chime-userdebug
# lunch
m bacon
