rm -rf device/xiaomi/chime
git clone https://github.com/nothing-sus-2/device_xiaomi_chime.git -b 13.0 device/xiaomi/chime
# set build environment
. build/envsetup.sh
#Preparing device
lunch superior_chime-user
# lunch
m bacon
