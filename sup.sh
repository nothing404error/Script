# Clone Rom
repo init --no-repo-verify -u https://github.com/superior-lts/manifest.git -b thirteen --git-lfs -g default,-mips,-darwin,-notdefault
# repo sync
/opt/crave/resync.sh
#clone device trees
rm -rf device/xiaomi/chime
git clone https://github.com/nothing-sus-2/android_device_xiaomi_chime.git -b sup device/xiaomi/chime
# set build environment
. build/envsetup.sh
#Preparing device
lunch superior_chime-user
# lunch
m bacon
