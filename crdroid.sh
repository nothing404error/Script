rm -rf device/xiaomi/chime
git clone https://github.com/nothing-sus-2/device_xiaomi_chime.git -b test device/xiaomi/chime

# set build environment
. build/envsetup.sh
#Preparing device
lunch lineage_chime-user
# lunch
m bacon
