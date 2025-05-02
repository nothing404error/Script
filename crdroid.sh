rm -rf device/xiaomi/chime
git clone https://github.com/nothing-sus-2/device_xiaomi_chime.git -b test1 device/xiaomi/chime
rm -rf frameworks/base
git clone https://github.com/nothing-sus-2/android_frameworks_base.git -b 13.0 frameworks/base
# set build environment
. build/envsetup.sh
#Preparing device
lunch lineage_chime-userdebug
# lunch
m bacon
