rm -rf vendor/xiaomi/chime
git clone https://github.com/nothing-sus-2/vendor_xiaomi_chime.git -b 13.0 vendor/xiaomi/chime

# set build environment
. build/envsetup.sh
#Preparing device
lunch superior_chime-userdebug
# lunch
m bacon
